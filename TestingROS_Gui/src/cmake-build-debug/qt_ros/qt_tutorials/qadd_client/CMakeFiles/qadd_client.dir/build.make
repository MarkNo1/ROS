# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/mark/clion-2018.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/mark/clion-2018.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug

# Include any dependencies generated for this target.
include qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/depend.make

# Include the progress variables for this target.
include qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/progress.make

# Include the compile flags for this target's objects.
include qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/flags.make

qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx: ../qt_ros/qt_tutorials/qadd_client/qadd.hpp
qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx: qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx_parameters
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating moc_qadd.cxx"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/lib/x86_64-linux-gnu/qt4/bin/moc @/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx_parameters

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/flags.make
qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o: ../qt_ros/qt_tutorials/qadd_client/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/qadd_client.dir/main.cpp.o -c /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client/main.cpp

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qadd_client.dir/main.cpp.i"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client/main.cpp > CMakeFiles/qadd_client.dir/main.cpp.i

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qadd_client.dir/main.cpp.s"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client/main.cpp -o CMakeFiles/qadd_client.dir/main.cpp.s

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.requires:

.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.requires

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.provides: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.requires
	$(MAKE) -f qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/build.make qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.provides.build
.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.provides

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.provides.build: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o


qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/flags.make
qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o: ../qt_ros/qt_tutorials/qadd_client/qadd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/qadd_client.dir/qadd.cpp.o -c /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client/qadd.cpp

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qadd_client.dir/qadd.cpp.i"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client/qadd.cpp > CMakeFiles/qadd_client.dir/qadd.cpp.i

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qadd_client.dir/qadd.cpp.s"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client/qadd.cpp -o CMakeFiles/qadd_client.dir/qadd.cpp.s

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.requires:

.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.requires

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.provides: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.requires
	$(MAKE) -f qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/build.make qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.provides.build
.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.provides

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.provides.build: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o


qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/flags.make
qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o: qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/qadd_client.dir/moc_qadd.cxx.o -c /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qadd_client.dir/moc_qadd.cxx.i"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx > CMakeFiles/qadd_client.dir/moc_qadd.cxx.i

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qadd_client.dir/moc_qadd.cxx.s"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx -o CMakeFiles/qadd_client.dir/moc_qadd.cxx.s

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.requires:

.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.requires

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.provides: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.requires
	$(MAKE) -f qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/build.make qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.provides.build
.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.provides

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.provides.build: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o


# Object files for target qadd_client
qadd_client_OBJECTS = \
"CMakeFiles/qadd_client.dir/main.cpp.o" \
"CMakeFiles/qadd_client.dir/qadd.cpp.o" \
"CMakeFiles/qadd_client.dir/moc_qadd.cxx.o"

# External object files for target qadd_client
qadd_client_EXTERNAL_OBJECTS =

devel/lib/qt_tutorials/qadd_client: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o
devel/lib/qt_tutorials/qadd_client: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o
devel/lib/qt_tutorials/qadd_client: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o
devel/lib/qt_tutorials/qadd_client: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/build.make
devel/lib/qt_tutorials/qadd_client: devel/lib/libqtutorials.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libQtGui.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libQtCore.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/libroscpp.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/librosconsole.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/libroscpp_serialization.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/libxmlrpcpp.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/librostime.so
devel/lib/qt_tutorials/qadd_client: /opt/ros/kinetic/lib/libcpp_common.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/qt_tutorials/qadd_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/qt_tutorials/qadd_client: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../../devel/lib/qt_tutorials/qadd_client"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qadd_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/build: devel/lib/qt_tutorials/qadd_client

.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/build

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/requires: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/main.cpp.o.requires
qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/requires: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/qadd.cpp.o.requires
qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/requires: qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/moc_qadd.cxx.o.requires

.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/requires

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/clean:
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client && $(CMAKE_COMMAND) -P CMakeFiles/qadd_client.dir/cmake_clean.cmake
.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/clean

qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/depend: qt_ros/qt_tutorials/qadd_client/moc_qadd.cxx
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_client /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qt_ros/qt_tutorials/qadd_client/CMakeFiles/qadd_client.dir/depend
