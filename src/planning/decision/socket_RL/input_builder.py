# from zzz_driver_msgs.utils import get_speed, get_yaw

# qzl:  change all the attributes of Mapstate.msg into DynamicMap class
class InputBuilder():
    def __init__(self):
         # init
        self.carx = 0
        self.cary = 0
        self.yaw = 0
        self.carvx = 0
        self.carvy = 0
        self.localization_received = False
        self.obss = None

    # TODO: fix the input
    def get_obs(self, dmap):
        obs = []
        ego_obs = [
            dmap.ego_vehicle.x,
            dmap.ego_vehicle.y,
            dmap.ego_vehicle.vx,
            dmap.ego_vehicle.vy,
            dmap.ego_vehicle.yaw
        ]
        # if self.carx == 0 and self.cary == 0:
        #     return []
        # print("ego_yaw",self.carx, self.cary, self.yaw)
        obs.append(ego_obs)

        for veh in dmap.vehicles: 
            surrouding_obs = [
                veh.x, 
                veh.y,
                veh.vx,
                veh.vy,
                veh.yaw,
                0
            ]
            obs.append(surrouding_obs)
        return obs

    # def build_input(self, localization):
    #     self.carx = localization.pose.position.x
    #     self.cary = localization.pose.position.y
    #     self.carz = localization.pose.position.z
    #     self.carvx = localization.pose.linear_velocity.x
    #     self.carvy = localization.pose.linear_velocity.y
    #     self.localization_received = True
    #     self.yaw = localization.pose.heading
    #     return self.get_obs()


# class InputBuilder():
#     def __init__(self):
#          # init
#         self.carx = 0
#         self.cary = 0
#         self.yaw = 0
#         self.carvx = 0
#         self.carvy = 0
#         self.localization_received = False
#         self.obss = None

#     # TODO: fix the input
#     def get_obs(self, dmap):
#         obs = []
#         ego_obs = [
#             dmap.ego_state.pose.pose.position.x,
#             dmap.ego_state.pose.pose.position.y,
#             dmap.ego_state.twist.twist.linear.x,
#             dmap.ego_state.twist.twist.linear.y,
#             get_yaw(dmap.ego_state)
#         ]
#         if self.carx == 0 and self.cary == 0:
#             return []
#         # print("ego_yaw",self.carx, self.cary, self.yaw)
#         obs.append(ego_obs)

#         for obs in self.dynamic_map.jmap.obstacles: 
#             surrouding_obs = [
#                 obs.state.pose.pose.position.x , 
#                 obs.state.pose.pose.position.y ,
#                 obs.state.twist.twist.linear.x ,
#                 obs.state.twist.twist.linear.y.
#                 get_yaw(obs.state),
#                 0
#             ]
#             obs.append(surrouding_obs)
#         return obs

#     def build_input(self, localization):
#         self.carx = localization.pose.position.x
#         self.cary = localization.pose.position.y
#         self.carz = localization.pose.position.z
#         self.carvx = localization.pose.linear_velocity.x
#         self.carvy = localization.pose.linear_velocity.y
#         self.localization_received = True
#         self.yaw = localization.pose.heading
#         return self.get_obs()

    
