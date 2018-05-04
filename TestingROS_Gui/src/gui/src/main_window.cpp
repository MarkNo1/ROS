/**
 * @file /src/main_window.cpp
 *
 * @brief Implementation for the qt gui.
 *
 * @date February 2011
 **/
/*****************************************************************************
** Includes
*****************************************************************************/

#include <QMessageBox>
#include <QtGui>
#include <gui/main_window.hpp>
#include <iostream>
#include <unistd.h>

/*****************************************************************************
** Namespaces
*****************************************************************************/

namespace gui {

using namespace Qt;

/*****************************************************************************
** Implementation [MainWindow]
*****************************************************************************/

// Constructor
MainWindow::MainWindow(int argc, char **argv, QWidget *parent)
    : QMainWindow(parent) {
  ui.setupUi(this); // Calling this incidentally connects all ui's triggers to
                    // on_...() callbacks in this class.

  ros::init(argc, argv, "Mark");
  ros::NodeHandle n("Mark_Node");

  qnode_sub = new QSubscriber(n);
  qnode_pub = new QPublisher(n, *ui.keyboard_board);

  setWindowIcon(QIcon(":/images/icon.png"));
  QObject::connect(qnode_sub, SIGNAL(rosShutdown()), this, SLOT(close()));
  QObject::connect(qnode_pub, SIGNAL(rosShutdown()), this, SLOT(close()));
  QObject::connect(ui.send_button, SIGNAL(released()), this, SLOT(sendText()));
  /*********************
  ** Logging
  **********************/
  ui.display_board->setModel(qnode_sub->loggingModel());
  QObject::connect(qnode_sub, SIGNAL(loggingUpdated()), this,
                   SLOT(updateLoggingView()));

  qnode_sub->start();
  qnode_pub->start();
}

// Destructor
MainWindow::~MainWindow() {}

/*****************************************************************************
** Implementation [Slots]
*****************************************************************************/

void MainWindow::showNoMasterMessage() {
  QMessageBox msgBox;
  msgBox.setText("Couldn't find the ros master.");
  msgBox.exec();
  close();
}

void MainWindow::sendText() {
  qnode_pub->enable_send();
  usleep(10);
  ui.keyboard_board->clear();
  std::cout << "Inside send button !" << std::endl;
}

/*****************************************************************************
** Implemenation [Slots][manually connected]
*****************************************************************************/

/**
 * This function is signalled by the underlying model. When the model changes,
 * this will drop the cursor down to the last line in the QListview to ensure
 * the user can always see the latest log message.
 */

void MainWindow::updateLoggingView() { ui.display_board->scrollToBottom(); }

void MainWindow::closeEvent(QCloseEvent *event) {
  QMainWindow::closeEvent(event);
}

} // namespace gui
