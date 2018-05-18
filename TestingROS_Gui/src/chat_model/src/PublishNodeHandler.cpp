//
// Created by mark on 18/05/18.
//

#include <chat_model/PublishNodeHandler.h>

PublishNodeHandler::PublishNodeHandler():topic_name("/board"), node(0){}

PublishNodeHandler::PublishNodeHandler(ros::NodeHandle &nh, std::string topic_name){
  this->node = &nh;
  this->topic_name = topic_name;
  this->topic = node->advertise<chat_messages::BinaryFile>(topic_name, 100);

  ROS_INFO("Node - Connected to topic: %s", topic_name.c_str());
}


void PublishNodeHandler::send_message(chat_messages::BinaryFile & message) {
  topic.publish(message);
}






