//
// Created by mark on 18/05/18.
//

#include <chat_model/SubscriberNodeHandler.h>

SubscriberNodeHandler::SubscriberNodeHandler():name("None"),topic_name("/board"), node(0){}

SubscriberNodeHandler::SubscriberNodeHandler(ros::NodeHandle nh, std::string topic_name){
  this->node = &nh;
  this->name = ros::this_node::getName();
  this->topic_name = topic_name;
  this->topic = node->subscribe(topic_name, 100,  &SubscriberNodeHandler::message_callback, this);

  ROS_INFO("Node - %s Connected to topic: %s", name.c_str(), topic_name.c_str());
}

void SubscriberNodeHandler::message_callback(const chat_messages::BinaryFile &msg){
  queue.push_back(msg);
}

std::vector<chat_messages::BinaryFile>  & SubscriberNodeHandler::get_queue(){
  return queue;
}