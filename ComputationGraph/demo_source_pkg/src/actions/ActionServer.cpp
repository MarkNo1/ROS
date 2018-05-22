//
// Created by mark on 22/05/18.
//

#include <demo_source_pkg/ActionServer.hpp>

namespace demo_source_pkg{


ActionServer::ActionServer(std::string name)
        : simpleAS(nh_, name, boost::bind(&ActionServer::executeCB, this, _1),
                   false),
          action_name(name) {
  simpleAS.registerPreemptCallback(boost::bind(&ActionServer::preemptCB, this));
  simpleAS.start();
}

ActionServer::~ActionServer(void) {}

void ActionServer::preemptCB() {
  ROS_WARN("%s got preempted!", action_name.c_str());
  result.final_count = progress;
  simpleAS.setPreempted(result, "I got Preempted");
}

void ActionServer::executeCB(
        const messages_pkg::CountingActionGoal::ConstPtr &goal) {
  if (!simpleAS.isActive() || simpleAS.isPreemptRequested())
    return;
  ros::Rate rate(1);
  ROS_INFO("%s is processing the goal %d", action_name.c_str(), goal->count);
  for (progress = 1; progress <= goal->count; progress++) {
    // Check for ros
    if (!ros::ok()) {
      result.final_count = progress;
      simpleAS.setAborted(result, "I failed !");
      ROS_INFO("%s Shutting down", action_name.c_str());
      break;
    }

    if (!simpleAS.isActive() || simpleAS.isPreemptRequested()) {
      return;
    }

    if (goal->count <= progress) {
      ROS_INFO("%s Succeeded at getting to goal %d", action_name.c_str(),
               goal->count);
      result.final_count = progress;
      simpleAS.setSucceeded(result);

    } else {
      ROS_INFO("Setting to goal %d / %d", feedback.current_number, goal->count);
      feedback.current_number = progress;
      simpleAS.publishFeedback(feedback);
    }
    rate.sleep();
  }
}

};