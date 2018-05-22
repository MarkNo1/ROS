//
// Created by mark on 22/05/18.
//

#ifndef DEMO_SOURCE_PKG_DEMO_ACTION_SERVER_HPP
#define DEMO_SOURCE_PKG_DEMO_ACTION_SERVER_HPP

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <messages_pkg/CountingActionAction.h>
#include <messages_pkg/CountingActionFeedback.h>
#include <messages_pkg/CountingActionResult.h>
#include <messages_pkg/CountingActionGoal.h>
#include <iostream>
#include <sstream>
#include <string>

namespace  demo_source_pkg {
    class ActionServer {
    protected:
        ros::NodeHandle nh_;
        // NodeHandle instance must be created before this line. Otherwise strange error may occur.
        actionlib::SimpleActionServer <messages_pkg::CountingActionAction> simpleAS;
        // create messages that are used to published feedback/result
        messages_pkg::CountingActionFeedback feedback;
        messages_pkg::CountingActionResult result;
        std::string action_name;
        int goal;
        int progress;

    public:
        ActionServer(std::string name);

        ~ActionServer(void);

        void preemptCB();

        void executeCB(const messages_pkg::CountingActionGoal::ConstPtr &goal);
    };

}




#endif //DEMO_SOURCE_PKG_DEMO_ACTION_SERVER_HPP
