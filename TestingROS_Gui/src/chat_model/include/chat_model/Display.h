//
// Created by mark on 30/04/18.
//

#ifndef PROJECT_DISPLAY_H
#define PROJECT_DISPLAY_H


#include <iostream>
#include <ros/ros.h>
#include <sstream>
#include <string>
#include <chat_messages/Text_message.h>

using namespace ros;

class Display {
private:
    NodeHandle *node;
    Subscriber board;
    std::string name;
    int frame_count;

public:
    Display(NodeHandle &nh);

    void print_messages(const chat_messages::Text_message &msg);
};

#endif //PROJECT_DISPLAY_H
