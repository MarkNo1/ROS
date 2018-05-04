/**
 * @file /include/gui/main_window.hpp
 *
 * @brief Qt based gui for gui.
 *
 * @date November 2010
 **/
#ifndef gui_MAIN_WINDOW_H
#define gui_MAIN_WINDOW_H

#include "qnode.hpp"
#include "ui_main_window.h"
#include <QtGui/QMainWindow>

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

private:
  Ui::MainWindowDesign ui;
  // Thread Q_NODE
  // Publisher and Subscriber
  QSubscriber *qnode_sub;
  QPublisher *qnode_pub;
};
}

#endif // gui_MAIN_WINDOW_H
