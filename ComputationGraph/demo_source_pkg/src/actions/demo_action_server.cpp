//
// Created by mark on 22/05/18.
//

#include <ros/ros.h>
#include <demo_source_pkg/ActionServer.hpp>

int main(int argc, char** argv)
{

  ros::init(argc, argv, "demo_action");
  ROS_INFO("Starting Demo Action Server");
  demo_source_pkg::ActionServer action_server_obj(ros::this_node::getName());
  ros::spin();
  return 0;
}