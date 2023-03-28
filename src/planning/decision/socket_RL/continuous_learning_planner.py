import os
import logging
import sys
import numpy as np
from numpy import genfromtxt

## local package
from Agent.zzz.dynamic_map import DynamicMap, Lane, Lanepoint, Vehicle
from Agent.zzz.frenet import Frenet_path
from Agent.zzz.JunctionTrajectoryPlanner_simple_predict import \
    JunctionTrajectoryPlanner_SP
# from Agent.long_tail_planner
from Agent.long_tail_planner.dynamic_confidence_planner import DCP_Agent

from Agent.multihead_memory_q_net.memory_q_net import MemoryQNet
import configs
from Agent.zzz.actions import TrajectoryAction

class ContinuousLearningPlanner():
    def  __init__(self):

        # generacte conditions trajectories
        self.trajectory_planner = JunctionTrajectoryPlanner_SP()  # 1Universal Track Generator

        # zwt long tail planner
        self.long_tail_planner = DCP_Agent()  # Long Tail Planner

        self.dynamic_map = DynamicMap() 

        #  added memory net
        self.memory_q_net = MemoryQNet() 
        

        # TODO: change the ref path, now it is a fixed path
        # update ref path   in dynamic_map
        self.read_ref_path_from_file()  

        #  zwt config
        self.traffic_light_obs = configs.continuous_learning_planner.traffic_light_obs
        self.using_prdiction = configs.continuous_learning_planner.using_prdiction
        self.speed_index =  configs.continuous_learning_planner.speed_index
        self.force_brake = configs.continuous_learning_planner.force_brake
        self.direction = configs.continuous_learning_planner.direction
        self.intersection_s_list = configs.continuous_learning_planner.intersection_s_list
        self.target_v_list = configs.continuous_learning_planner.target_v_list
    

        # dns copy from lane decision main.py
        self._dynamic_map_buffer = None
        self._static_map_buffer = None
        

    def run_update_path(self, obs, done):# TODO: represent a obs
        # get input:
        self.dynamic_map.add_target_v_on_s(self.target_v_list)
        if done or len(obs) < 1:
            self.trajectory_planner.clear_buff(clean_csp=False)
            return None, None, None, None, None
        else:
            self.dynamic_map.update_map_from_list_obs(obs)  # get input
            if self.trajectory_planner.csp is not None and self.traffic_light_obs:
                self.dynamic_map.generate_intersection_obs(self.intersection_s_list, self.trajectory_planner.csp)
   
            try:                                                                            
                # ------------module 1: generate candidate trajectories-------------------------#
                if self.using_prdiction:
                    trajectory_action, index = self.trajectory_planner.trajectory_update(self.dynamic_map)
                else:
                    candidate_trajectories_tuple = self.trajectory_planner.generate_candidate_trajectories(self.dynamic_map)
                    # index = 2
                 # ------------module 2: decision with memory q net-------------------------#
                    # memort_q_list = self.memory_q_net.predict(virtual_states, virtual_action)
                    # q_action = self.check_action_valid(candidate_trajectories_tuple, memort_q_list)  # check if the action is valid and return the index

                 # ------------module 3: decision with long tail planner|| or imagination-------------------------#
                index, worst_q_list, worst_Q_list, fast_index = self.long_tail_planner.act(candidate_trajectories_tuple, self.dynamic_map)
                print("index",index)
                chosen_action_id = index
                chosen_trajectory, faster_trajectory = self.trajectory_planner.trajectory_update_CP(chosen_action_id, fast_index)

                print("[Action_ID]",chosen_action_id)

                return chosen_trajectory, chosen_action_id, worst_q_list, worst_Q_list,faster_trajectory
            except:
                self.trajectory_planner.clear_buff()
                self.purely_training(obs)

                return None, None, None, None, None
        




    def read_ref_path_from_file(self):
        # record_file = os.path.join(configs.continuous_learning_planner.ref_data_path)

        # try:
        #     file_handler = open(record_file, 'r')
        # except (FileNotFoundError, IOError) as ex:
        #     # self.logger.error("Error opening {}: {}".format(record_file, ex))
        #     sys.exit(1)

        # self.data = genfromtxt(file_handler, delimiter=',', names=True)
        # file_handler.close()
        # t_array = []
        # self.ref_path = Lane()

        # for i in range(0,len(self.data)//100): # The Apollo record data is too dense!
        #     lanepoint = Lanepoint()
        #     lanepoint.position.x = self.data['x'][i*90]
        #     lanepoint.position.y = self.data['y'][i*90]
        #     # print("ref path", lanepoint.position.x, lanepoint.position.y)
        #     self.ref_path.central_path.append(lanepoint)
        #     t_array.append(lanepoint)
        # self.ref_path.central_path_array = np.array(t_array)
        # self.ref_path.speed_limit = configs.continuous_learning_planner.speed_limit  # m/s
        # self.dynamic_map.update_ref_path_from_routing(self.ref_path) 
        self.ref_path = Lane()
        t_array = []
        for i in range(0,100):
            lanepoint = Lanepoint()
            lanepoint.position.x = 0
            lanepoint.position.y = i
            self.ref_path.central_path.append(lanepoint)
            t_array.append(lanepoint)
        self.ref_path.central_path_array = np.array(t_array)
        self.ref_path.speed_limit = configs.continuous_learning_planner.speed_limit  # m/s
        self.dynamic_map.update_ref_path_from_routing(self.ref_path) 


    def purely_training(self, obs):
        if len(obs)<1:
            return None
        self.dynamic_map.update_map_from_list_obs(obs)
        obs = self.long_tail_planner.wrap_state(self.dynamic_map)
        self.long_tail_planner.add_data_and_update_transition_model(obs)
        

        