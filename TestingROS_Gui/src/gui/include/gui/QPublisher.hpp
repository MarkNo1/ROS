//
// Created by mark on 18/05/18.
//

#ifndef gui_QNODEPUSBLISHER_H
#define gui_QNODEPUSBLISHER_H

#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif

#include <QtCore>
#include <chat_messages/BinaryFile.h>
#include <chat_model/PublishNodeHandler.h>

namespace gui {

class QPublisher : public QThread {
  Q_OBJECT
public:
  QPublisher(ros::NodeHandle &nm, std::string topic_name);
  virtual ~QPublisher();

  void add_message_to_queue(chat_messages::BinaryFile message);
  void run();

Q_SIGNALS:
  void loggingUpdated();
  void rosShutdown();

private:
  PublishNodeHandler * ros_publisher;
  std::vector<chat_messages::BinaryFile> queue;


};
}

#endif // gui_QNODEPUSBLISHER_H
