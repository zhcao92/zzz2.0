# --------continuous_learning_planner config---------
class  continuous_learning_planner:
    traffic_light_obs = True  # ?
    using_prdiction = False
    speed_index = 2
    force_brake = False
    direction = 0
    target_v_list = [[0, 10/3.6]] #eath item [s,v] after each s, the target velocity change to v
    intersection_s_list = [0] # the obs 
    ref_data_path =  'data/log/yizhuang_0321_big_circle.csv'
    speed_limit =  60/3.6


# ---------memory q net config---------
class memory_q_net:
    state_dim =  10
    action_dim =  3
    output_dim =  1
    hidden_dim = [ 64 ,  32 ]
    learning_rate =  0.005
    weight_decay =  0


