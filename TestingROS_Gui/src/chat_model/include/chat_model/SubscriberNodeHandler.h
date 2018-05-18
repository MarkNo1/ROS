//
// Created by mark on 18/05/18.
//

#ifndef PROJECT_SUBSCRIBERNODEHANDLER_H
#define PROJECT_SUBSCRIBERNODEHANDLER_H

#include <chat_messages/BinaryFile.h>
#include <string>
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif


class SubscriberNodeHandler {

private:
    ros::NodeHandle *node;
    ros::Subscriber topic;
    std::string name;
    std::string topic_name;
    std::vector<chat_messages::BinaryFile> queue;

public:
    SubscriberNodeHandler();
    SubscriberNodeHandler(ros::NodeHandle, std::string topic_name);

    void message_callback(const chat_messages::BinaryFile &msg);

    std::vector<chat_messages::BinaryFile>  & get_queue();

};


#endif //PROJECT_SUBSCRIBERNODEHANDLER_H
