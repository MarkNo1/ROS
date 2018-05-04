
#ifndef gui_QNODE_HPP_
#define gui_QNODE_HPP_

// To workaround boost/qt4 problems that won't be bugfixed. Refer to
//    https://bugreports.qt.io/browse/QTBUG-22829
#ifndef Q_MOC_RUN
#include <ros/ros.h>
#endif
#include <QListView>
#include <QStringListModel>
#include <QTextEdit>
#include <QThread>
#include <chat_model/Keyboard.h>
#include <string>

namespace gui {


class QSubscriber : public QThread {
  Q_OBJECT
public:
  QSubscriber(ros::NodeHandle &nh);
  virtual ~QSubscriber();
  void run();
  // To connect the log to the GUI
  QStringListModel *loggingModel() { return &logging_model; }
  // To print into the GUI
  void log_to_gui(const std::string &msg);
  // Callback after receiving the message from the topic
  void message_callback(const chat_messages::Text_message &msg);

Q_SIGNALS:
  void loggingUpdated();
  void rosShutdown();

private:
    NodeHandle *node;
    QStringListModel logging_model;
    Subscriber board;
    std::string name;
};




class QPublisher : public QThread {
  Q_OBJECT
public:
  QPublisher(ros::NodeHandle &n, QTextEdit &kb);
  virtual ~QPublisher();
  void enable_send();
  void disable_send();
  void run();


Q_SIGNALS:
  void loggingUpdated();
  void rosShutdown();

private:
  bool send_msg;
  QTextEdit *keyboard_board;
  Keyboard *keyboard_node_handler;
};

} // namespace gui

#endif /* gui_QNODE_HPP_ */
