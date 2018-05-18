/**
 * @file /include/gui/main_window.hpp
 *
 * @brief Qt based gui for gui.
 *
 * @date November 2010
 **/
#ifndef gui_MAIN_WINDOW_H
#define gui_MAIN_WINDOW_H

#include "QPublisher.hpp"
#include "QSubscriber.hpp"
#include "ui_main_window.h"
#include <QtGui/QMainWindow>
#include <chat_messages/BinaryFile.h>


namespace gui {

class MainWindow : public QMainWindow {
  Q_OBJECT

public:
  MainWindow(int argc, char **argv, QWidget *parent = 0);
  ~MainWindow();

  void closeEvent(QCloseEvent *event); // Overloaded function
  void showNoMasterMessage();

public Q_SLOTS:
  void updateLoggingView();
  void sendText();
  void sendFile();
  void writeFile(chat_messages::BinaryFile &msg);
  void feed_msg_pkg_text(chat_messages::BinaryFile &msg, int &frame,
                    std::string &sender, std::string &text);
  void feed_msg_pkg_file(chat_messages::BinaryFile &msg, int &frame,
                      std::string &sender,std::string & data_name,
                         std::vector<signed char> & raw_data);

private:
  Ui::MainWindowDesign ui;
  // Thread Q_NODE
  // Publisher and Subscriber
  QPublisher *Qpub;
  QSubscriber *Qsub;
  int frame_count;
  std::string node_name;
};
}

#endif // gui_MAIN_WINDOW_H
