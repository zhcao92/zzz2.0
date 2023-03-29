#!/usr/bin/env python

from continuous_learning_planner import ContinuousLearningPlanner
from input_builder import InputBuilder
import matplotlib.pyplot as plt
import configs
import socket
import pickle
import json
from Agent.zzz.dynamic_map import DynamicMap
from input_builder import InputBuilder
import time
import sys
import os
sys.path.append("~/workspace/zzz/")
#export PYTHONPATH=/usr/lib/python3.6:/usr/local/lib/python3.6/dist-packages:/usr/local/lib/python3.6/site-packages:/usr/lib/python3.6/dist-packages:$PYTHONPATH


class TestClass:
    def __init__(self, a, b):
        self.a = a
        self.b = b
        
        
def main():

    """
    virtual input
    """
    # TODO: update input
    # virtual_input = input_builder.InputBuilder()
    _input_builder = InputBuilder()
    # obs =  [[0,0,0,0,0],
    #         [0,0,0,0,0,0],
    #         [0,0,0,0,0,0]]

    """
    planner 
    """
    planner = ContinuousLearningPlanner()

    """
    main loop
    """

    """
    build socket
    TODO: update to a class
    """
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    host = "127.0.0.1"
    port_server = 2345

    server_socket.bind((host, port_server))
    server_socket.listen(1) # TODO : understand the number of listen
    # Action_socket_publish.bind((host, port_publish))

    print("Waiting for connection...")
    client_conn, client_addr = server_socket.accept()
    print("Connected to ", client_addr) 


    while True:
        # cal time cost
        start_time = time.time()
        # update obs
        # dmap size is about 5000-6000B
        data = client_conn.recv(81920) # py3, auto convert to bytes
        received_dynamic_map = pickle.loads(data,encoding='iso-8859-1')
        # print("SOCKETTEST.receive data",received_dynamic_map.header.frame_id)
        print("===========SOCKETTEST.receive data===============")#,received_dynamic_map.collision)
        print("ego pose:(%.2f, %.2f)" % (received_dynamic_map.ego_vehicle.x,received_dynamic_map.ego_vehicle.y))
        obs = _input_builder.get_obs(received_dynamic_map)
        print('len(obs)=',len(obs))
        # update trajectory
        chosen_trajectory, chosen_action_id, worst_q_list, worst_Q_list,faster_trajectory=planner.run_update_path(obs, done=False)
        # if chosen_trajectory:
        #     traj, speed, orig_traj = chosen_trajectory.trajectory,chosen_trajectory.desired_speed,chosen_trajectory.original_trajectory
        # else:
        #     traj, speed, orig_traj = None,None,None
        if chosen_trajectory:
            traj = chosen_trajectory
            traj.original_trajectory = None
        else:
            traj = None
        sent_action = pickle.dumps(traj,protocol=1) #qzl:about 40000B
        print(type(sent_action),sys.getsizeof(sent_action))

        # publish trajectory
        client_conn.sendall(sent_action)
        print("Time cost",time.time()-start_time)
    

if __name__ == '__main__':
    main()
