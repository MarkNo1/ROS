cmake_minimum_required(VERSION 2.8.3)
project(chat_model)

## Compile as C++11, supported in ROS Kinetic and newer
set(CMAKE_CXX_COMPILER "clang++-5.0")
set(CMAKE_C_COMPILER "clang-5.0")
set(CMAKE_CXX_STANDARD 11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
        roscpp
        chat_messages
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES chat_model
  CATKIN_DEPENDS  roscpp chat_messages
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
 include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
 add_library(${PROJECT_NAME}
         src/PublishNodeHandler.cpp
         src/SubscriberNodeHandler.cpp
 )
