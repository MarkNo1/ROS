//
// Created by mark on 22/05/18.
//


#include <ros/ros.h>
#include <iostream>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <messages_pkg/CountingActionAction.h>
#include <messages_pkg/CountingActionGoal.h>

int main (int argc, char **argv)
{
  ros::init(argc, argv, "demo_action_client");
  int goal_value=0;
  int timeout=0;

  if(argc != 3){
    ROS_INFO("%d",argc);
    ROS_WARN("Usage: demo_action_client <goal> <time_to_preempt_in_sec>");

    return 1;
  }else{
    goal_value = atoi(argv[1]);
    timeout = atoi(argv[2]);
  }

  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<messages_pkg::CountingActionAction> ac("demo_action", true);

  ROS_INFO("Waiting for action server to start.");

  // wait for the action server to start
  ac.waitForServer(); //will wait for infinite time

  ROS_INFO("Action server started, sending goal.");

  // send a goal to the action
  messages_pkg::CountingActionGoal goal;
  goal.count = goal_value;

  ROS_INFO("Sending Goal [%d] and Preempt time of [%d]",goal.count, timeout);
  ac.sendGoal(goal);

  //wait for the action to return
  bool finished_before_timeout = ac.waitForResult(ros::Duration(timeout));
  //Preempting task
  ac.cancelGoal();

  if (finished_before_timeout)
  {
    actionlib::SimpleClientGoalState state = ac.getState();
    ROS_INFO("Action finished: %s",state.toString().c_str());
    //Preempting the process
    ac.cancelGoal();

  }
  else
    ROS_INFO("Action did not finish before the time out.");

  //exit
  return 0;
}