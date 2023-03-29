#!/bin/bash
cd ./src # 进入您的catkin工作区中的src文件夹
for pkg in $(catkin_topological_order --only-names); do
    echo $pkg
done