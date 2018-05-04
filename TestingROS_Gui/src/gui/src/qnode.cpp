
#include <QString>
#include <QStringList>
#include <QStringListModel>
#include <gui/qnode.hpp>
#include <ros/network.h>
#include <ros/ros.h>
#include <sstream>
#include <sstream>
#include <std_msgs/String.h>
#include <string>

namespace gui {

/*****************************************************************************
** QNode Subscriber
*****************************************************************************/


// Constructor
QSubscriber::QSubscriber(ros::NodeHandle &nh) {
  ros::start();
  node = &nh;
  name = this_node::getName();
  ROS_INFO("Node - %s Connected to the Board", name.c_str());
  board = node->subscribe("/board", 100, &QSubscriber::message_callback, this);
}

// Destructor
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

void QSubscriber::message_callback(const chat_messages::Text_message &msg) {
  std::stringstream ss;
  ss << "[" << msg.sender << "]:" << msg.text << std::endl;
  std::cout  << "[" << msg.sender << "]:" << msg.text << std::endl;
  std::string temp_msg = ss.str();
  log_to_gui(temp_msg);
}

// Infinite loop for the thread
void QSubscriber::run() {
  ros::spinOnce();
  std::cout << "Subscriber loop started!" << std::endl;
  ros::spin();
  std::cout << "Ros shutdown, proceeding to close the gui." << std::endl;
  Q_EMIT
  rosShutdown(); // used to signal the gui for a shutdown (useful to roslaunch)
}

/*****************************************************************************
** QNode Publisher
*****************************************************************************/

// Constructor
QPublisher::QPublisher(ros::NodeHandle &n, QTextEdit &kb) {
  ros::start();
  // Add your ros communications here.
  keyboard_node_handler = new Keyboard(n);
  keyboard_board = &kb;
  send_msg = 0;
  ros::spinOnce();
}

// Destructor
QPublisher::~QPublisher() {
  if (ros::isStarted()) {
    ros::shutdown(); // explicitly needed since we use ros::start();
    ros::waitForShutdown();
  }
  wait();
}

void QPublisher::enable_send() { send_msg = 1; }
void QPublisher::disable_send() { send_msg = 0; }

// Infinite loop for the thread
void QPublisher::run() {
  ros::spinOnce();
  while (ros::ok()) {
    if (send_msg) {
      std::cout << "Inside send_msg !" << std::endl;
      QString text_msg = keyboard_board->toPlainText();
      std::string text = text_msg.toStdString();
      keyboard_node_handler->send_message(text_msg.toStdString());
      std::cout  << "Text to send: " <<text <<  std::endl;
      disable_send();
      ros::spinOnce();
    }
  }

  std::cout << "Ros shutdown, proceeding to close the gui." << std::endl;
  Q_EMIT
  rosShutdown(); // used to signal the gui for a shutdown (useful to roslaunch)
}

} // namespace gui
