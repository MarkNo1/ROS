//
// Created by mark on 22/05/18.
//

#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <messages_pkg/demo_msg.h>
#include <iostream>
#include <sstream>


//Defining namespace using in this code
using namespace std;
//using namespace ros;
//using namespace std_msgs;
//using namespace mastering_ros_demo_pkg;

int main(int argc, char **argv)

{

  //Initializing ROS node with a name of demo_topic_publisher
  ros::init(argc, argv,"demo_msg_publisher");
  //Created a nodehandle object
  ros::NodeHandle node_obj;
  //Create a publisher object
  ros::Publisher publisher = node_obj.advertise<messages_pkg::demo_msg>("/demo_msg_topic",10);
  //Create a rate object
  ros::Rate loop_rate(1);
  //Variable of the number initializing as zero
  int number_count = 0;

  //While loop for incrementing number and publishing to topic /numbers
  while (ros::ok())
  {

    //Created a Int32 message
    messages_pkg::demo_msg msg;
    //Inserted data to message header


    std::stringstream ss;
    ss << "hello world ";
    msg.text = ss.str();
    msg.number = number_count;
    //Printing message data
    ROS_INFO("%d",msg.number);
    ROS_INFO("%s",msg.text.c_str());

    //Publishing the message
    publisher.publish(msg);
    //Spining once for doing the  all operation once
    ros::spinOnce();
    //Setting the loop rate
    loop_rate.sleep();
    //Increamenting the count
    ++number_count;



  }

  return 0;
}