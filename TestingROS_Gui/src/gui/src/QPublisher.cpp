//
// Created by mark on 18/05/18.
//

#include <gui/QPublisher.hpp>

namespace gui {

    QPublisher::QPublisher(ros::NodeHandle &n, std::string topic_name) {
      ros_publisher = new PublishNodeHandler(n, topic_name);
    }

    QPublisher::~QPublisher() {
      if (ros::isStarted()) {
        ros::shutdown(); // explicitly needed since we use ros::start();
        ros::waitForShutdown();
      }
      wait();
    }

    void QPublisher::add_message_to_queue(chat_messages::BinaryFile message) {
      queue.push_back(message);
      ROS_INFO("INSIDE QPUB MESSAGE SEND");
    }

    void QPublisher::run() {
      while (ros::ok()) {
        if (!queue.empty()){
          ros_publisher->send_message(queue.back());
          queue.pop_back();
        }
        ros::spinOnce();
        usleep(100);
      }
    }
}