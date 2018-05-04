//
// Created by mark on 30/04/18.
//

#ifndef PROJECT_KEYBOARD_H
#define PROJECT_KEYBOARD_H


#include <iostream>
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif
#include <sstream>
#include <string>
#include <chat_messages/Text_message.h>

using namespace ros;

class Keyboard {
private:
    NodeHandle *node;
    Publisher board;
    std::string name;
    int frame_count;

public:
    Keyboard();
    Keyboard(NodeHandle &nh);

    void send_message(const std::string &text);
    int check_command(const std::string &text);
};

#endif //PROJECT_KEYBOARD_H
