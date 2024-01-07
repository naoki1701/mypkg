#!/bin/bash

dir=~
[ "$1" != "" ] && dir="$1"

# Move to the workspace directory
cd $dir/ros2_ws || exit 1

# Build the workspace using colcon
colcon build || exit 1

# Source ROS 2 setup file
source /opt/ros/humble/setup.bash

# Source additional setup files if needed
# source $dir/.bashrc

# Run ROS 2 launch command with timeout
timeout 10 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log 2>&1

# Display the content of the log file
cat /tmp/mypkg.log

# Check if 'Listen: 10' is present in the log
grep 'Listen: 10' /tmp/mypkg.log

