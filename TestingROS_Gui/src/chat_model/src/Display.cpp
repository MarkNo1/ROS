//
// Created by mark on 30/04/18.
//

#include <chat_model/Display.h>
#include <chat_messages/Text_message.h>

Display::Display(NodeHandle &nh) {
  node = &nh;
  name = this_node::getName();
  ROS_INFO("Node - %s Connected to the Board", name.c_str());
  board = node->subscribe("/board", 100, &Display::print_messages, this);
}

void Display::print_messages(const chat_messages::Text_message &msg) {
  std::cout << "" << msg.sender << " : " << msg.text << std::endl;
}