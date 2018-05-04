//
// Created by mark on 30/04/18.
//

#include <chat_model/Keyboard.h>

Keyboard::Keyboard(){
  node = 0;
  name = "None";
  frame_count = 0;
}

Keyboard::Keyboard(NodeHandle &nh) {
  node = &nh;
  name = this_node::getName();
  ROS_INFO("Node - %s Connected to the Board", name.c_str());
  board = node->advertise<chat_messages::Text_message>("/board", 1000);
  frame_count = 0;
}

void Keyboard::send_message(const std::string &text) {
  chat_messages::Text_message msg;

  msg.header.frame_id = frame_count;
  msg.header.stamp = Time::now();
  msg.sender = name;
  msg.text = text.c_str();
  //    ROS_INFO("Node - %s Publish: %s", name.c_str(), text.c_str());
  board.publish(msg);
}

int Keyboard::check_command(const std::string &text) {
  if (text == "/list") {
    std::cout << "<LIST>" << std::endl;
    return 0;
  }
  return 1;
}