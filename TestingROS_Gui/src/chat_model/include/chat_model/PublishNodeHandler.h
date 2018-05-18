//
// Created by mark on 18/05/18.
//

#ifndef PROJECT_PUBLISHNODEHANDLER_H
#define PROJECT_PUBLISHNODEHANDLER_H

#include <chat_messages/BinaryFile.h>
#include <string>
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif

class PublishNodeHandler {

private:
    ros::NodeHandle *node;
    ros::Publisher topic;
    std::string topic_name;


public:
    PublishNodeHandler();
    PublishNodeHandler(ros::NodeHandle &nh, std::string topic_name);

    void send_message(chat_messages::BinaryFile & message);
};


#endif //PROJECT_PUBLISHNODEHANDLER_H
