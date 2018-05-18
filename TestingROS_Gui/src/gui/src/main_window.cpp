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
#include <QtCore>
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

  ros::init(argc, argv, "MainNode");
  ros::NodeHandle n("Node");
  ros::start();

  node_name = ros::this_node::getName();
  Qsub = new QSubscriber(n, "/board");
  Qpub = new QPublisher(n, "/board");

  setWindowIcon(QIcon(":/images/icon.png"));
  QObject::connect(Qsub, SIGNAL(rosShutdown()), this, SLOT(close()));
  QObject::connect(Qpub, SIGNAL(rosShutdown()), this, SLOT(close()));
  QObject::connect(ui.send_button, SIGNAL(released()), this, SLOT(sendText()));
  QObject::connect(ui.send_file, SIGNAL(released()), this, SLOT(sendFile()));

  /*********************
  ** Logging
  **********************/
  ui.display_board->setModel(Qsub->loggingModel());
  QObject::connect(Qsub, SIGNAL(loggingUpdated()), this,
                   SLOT(updateLoggingView()));

  Qsub->start();
  Qpub->start();
  frame_count = 0;
}

// Destructor
MainWindow::~MainWindow() {}

// Create the Message Pkg
void MainWindow::feed_msg_pkg_text(chat_messages::BinaryFile &msg, int &frame,
                                   std::string &sender, std::string &text) {
  msg.header.frame_id = frame;
  msg.header.stamp = ros::Time::now();
  msg.sender = sender;
  msg.text = text;
  frame++;
}

void MainWindow::feed_msg_pkg_file(chat_messages::BinaryFile &msg, int &frame,
                                   std::string &sender, std::string &data_name,
                                   std::vector<signed char> &raw_data) {
  msg.header.frame_id = frame;
  msg.header.stamp = ros::Time::now();
  msg.sender = sender;
  msg.text = "File:\t" + data_name + ".\t Sent!";
  msg.data_name = data_name;
  msg.data = raw_data;
  frame++;
}

/*****************************************************************************
** Implementation [Slots]
*****************************************************************************/

void MainWindow::sendText() {
  std::cout << "Inside send text button !" << std::endl;
  QString text = ui.keyboard_board->toPlainText();
  ui.keyboard_board->clear();
  std::string text_msg = text.toStdString();
  chat_messages::BinaryFile msg;
  feed_msg_pkg_text(msg, frame_count, node_name, text_msg);
  Qpub->add_message_to_queue(msg);
}

void MainWindow::sendFile() {
  std::cout << "Inside send file button !" << std::endl;
  QFile in_file(QFileDialog::getOpenFileName(NULL, tr("Chose a file")));
  if (!in_file.fileName().isEmpty()) {
    in_file.open(QIODevice::ReadOnly);
    const QByteArray buffer = in_file.readAll();
    in_file.close();
    std::vector<signed char> raw_byte(buffer.begin(), buffer.end());
    std::string file_name = in_file.fileName().toStdString();
    chat_messages::BinaryFile msg;
    feed_msg_pkg_file(msg, frame_count, node_name, file_name, raw_byte);
    Qpub->add_message_to_queue(msg);
  }
}

void MainWindow::writeFile(chat_messages::BinaryFile &msg) {
  QByteArray buffer = QByteArray(
      reinterpret_cast<const char *>(msg.data.data()), msg.data.size());
  std::string title = "File:  " + msg.data_name + "From: " + msg.sender;
  QFile out_file(QFileDialog::getSaveFileName(NULL, tr(title.c_str())));
  out_file.open(QIODevice::WriteOnly);
  // Check that the path is valid
  if (!out_file.fileName().isEmpty()) {
    // Write contents of ba in file
    out_file.write(buffer);
    std::cout << "3) File wrote Size: " << out_file.size() << std::endl;
    // Close the file
    out_file.close();
  }
}

/*****************************************************************************
** Implemenation [Slots][manually connected]
*****************************************************************************/

/**
 * This function is signalled by the underlying model. When the model changes,
 * this will drop the cursor down to the last line in the QListview to ensure
 * the user can always see the latest log message.
 */

void MainWindow::updateLoggingView() {
  if (!Qsub->get_queue_file_to_save().empty()) {
    writeFile(Qsub->get_queue_file_to_save().back());
    Qsub->get_queue_file_to_save().pop_back();
  }
  ui.display_board->scrollToBottom();
}

void MainWindow::closeEvent(QCloseEvent *event) {
  QMainWindow::closeEvent(event);
}
}
// namespace gui
