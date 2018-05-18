//
// Created by mark on 18/05/18.
//

#ifndef gui_QNODESUBSCRIBER_H
#define gui_QNODESUBSCRIBER_H

#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif

#include <QStringListModel>
#include <QtCore>
#include <chat_messages/BinaryFile.h>
#include <chat_model/SubscriberNodeHandler.h>

namespace gui {

class QSubscriber : public QThread {
  Q_OBJECT
public:
    QSubscriber(ros::NodeHandle &nh, std::string topic_name);

  virtual ~QSubscriber();

  void run();

  // To connect the log to the GUI
  QStringListModel *loggingModel() { return &logging_model; }

  // To print into the GUI
  void log_to_gui(const std::string &msg);

  // Callback after receiving the message from the topic
  void message_callback(const chat_messages::BinaryFile &msg);

  std::vector<chat_messages::BinaryFile> & get_queue_file_to_save();


Q_SIGNALS:
  void loggingUpdated();
  void rosShutdown();

private:
  QStringListModel logging_model;
  SubscriberNodeHandler * ros_subscriber;
  std::vector<chat_messages::BinaryFile> queue_file_to_save;
};

};
#endif // gui_QNODESUBSCRIBER_H
