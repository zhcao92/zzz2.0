rosbag record /localization/gps/fix /localization/imu/data

/home/nov/zzz/src/navigation/map_provider/sumo/nodes/native_map_generator
self._map_instance = ZparkMap()#ShougangMap()



/home/nov/zzz/src/localization/global_localization/src/global_fusion_oxford_2.cpp
// shougang map origin  (428191,4417667)
UTMX0 = 428191;
UTMY0 = 4417667;
//zpark 439489,4433193
UTMX0 = 439489;
UTMY0 = 4433193;

/home/nov/zzz/config/launch/full_stack/planning.launch
开启zzz规划



/home/nov/zzz/src/navigation/map_provider/sumo/src/zzz_navigation_map_provider_sumo/waypoint_tester.py
        self.current_route = (np.loadtxt(
            # os.environ.get('ZZZ_ROOT') + '/zzz/src/navigation/data/shougang_ref_path.dat', 
            os.environ.get('ZZZ_ROOT') + '/zzz/src/navigation/data/zpark_ref_path.txt', 
            delimiter=',')).tolist()

地图处理
第一次采集时，先
python track_process.py --origin 0,0 --input /home/nov/zpark/zpark_0915/path1-1_noimage.bag --output /home/nov/zpark/zpark_0915/path1-1.txt
然后生成的文件中选取一个439489,4433193 
然后
python track_process.py --origin 439489,4433193 --input /home/nov/zpark/zpark_0915/path1-1_noimage.bag --output /home/nov/zpark/zpark_0915/path1-1.txt

/ shunyi
python track_process.py --origin 475838,4448536 --input /home/nov/zpark/zpark_0915/path1-1_noimage.bag --output /home/nov/zpark/zpark_0915/path1-1.txt


rugbin
-73 302
