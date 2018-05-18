//
// Created by mark on 18/05/18.
//


#include <gui/QSubscriber.hpp>
#include <sstream>

namespace gui {

QSubscriber::QSubscriber(ros::NodeHandle &nh, std::string topic_name){
  this->ros_subscriber = new SubscriberNodeHandler(nh, topic_name);
}

QSubscriber::~QSubscriber() {
  if (ros::isStarted()) {
    ros::shutdown(); // explicitly needed since we use ros::start();
    ros::waitForShutdown();
  }
  wait();
}

void QSubscriber::log_to_gui(const std::string &msg) {
  logging_model.insertRows(logging_model.rowCount(), 1);
  QVariant new_row(QString(msg.c_str()));
  logging_model.setData(logging_model.index(logging_model.rowCount() - 1),
                        new_row);
  Q_EMIT loggingUpdated();
}

void QSubscriber::run(){
  while(ros::ok()){
    if(!ros_subscriber->get_queue().empty()){
      chat_messages::BinaryFile msg = ros_subscriber->get_queue().back();
      ros_subscriber->get_queue().pop_back();
      std::stringstream ss;
      ss << msg.sender << ": " << msg.text;
      log_to_gui(ss.str());
      ROS_INFO("INSIDE QSUB MESSAGE RECIVE");
      if(msg.data.size()> 0 && msg.sender != ros::this_node::getName())
        queue_file_to_save.push_back(msg);

    }
    usleep(100);

  }
}
    std::vector<chat_messages::BinaryFile> & QSubscriber::get_queue_file_to_save(){
      return queue_file_to_save;
}

}