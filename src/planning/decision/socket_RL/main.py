#!/usr/bin/env python

from continuous_learning_planner import ContinuousLearningPlanner
from input_builder import InputBuilder
import matplotlib.pyplot as plt
import configs
import socket
import pickle
from Agent.zzz.dynamic_map import DynamicMap
from input_builder import InputBuilder
import time
import sys
import os
sys.path.append("/home/user/workspace/zzz/")


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
    obs =  [[0,0,0,0,0],
            [0,0,0,0,0,0],
            [0,0,0,0,0,0]]

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
    # data = client_conn.recv(4096) # TODO: understand the number of recv
    # received_dynamic_map = pickle.loads(data)
    # print("Received data")

    # conn.close()

    while True:
        # update obs
        data = client_conn.recv(4096)
        received_dynamic_map = pickle.loads(data)
        # print("SOCKETTEST.receive data",received_dynamic_map.header.frame_id)
        print("SOCKETTEST.receive data",received_dynamic_map.collision)
    
        obs = _input_builder.get_obs(received_dynamic_map)

        # update trajectory
        chosen_trajectory, chosen_action_id, worst_q_list, worst_Q_list,faster_trajectory=planner.run_update_path(obs, done=False)
        sent_action = pickle.dumps(chosen_trajectory)

        # publish trajectory
        client_conn.sendall(sent_action)
    

if __name__ == '__main__':
    main()
