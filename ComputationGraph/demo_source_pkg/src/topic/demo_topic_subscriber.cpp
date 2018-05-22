//
// Created by mark on 22/05/18.
//

#include "ros/ros.h"
#include <messages_pkg/demo_msg.h>
#include <iostream>

//Callback of the topic /numbers
void number_callback(const messages_pkg::demo_msg::ConstPtr& msg)
{
  ROS_INFO("Recieved:\ntext: %s , number: %d ",msg->text.c_str(), msg->number);
}

int main(int argc, char **argv)
{

  //Initializing ROS node with a name of demo_topic_subscriber
  ros::init(argc, argv,"demo_topic_subscriber");
  //Created a nodehandle object
  ros::NodeHandle node_obj;
  //Create a publisher object
  ros::Subscriber subscriber = node_obj.subscribe("/demo_msg_topic",10,number_callback);
  //Spinning the node
  ros::spin();
  return 0;
}
