# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mark/Project/TestingROS_Gui/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mark/Project/TestingROS_Gui/build

# Include any dependencies generated for this target.
include qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/depend.make

# Include the progress variables for this target.
include qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/progress.make

# Include the compile flags for this target's objects.
include qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/flags.make

qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx: /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/qadd.hpp
qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx: qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx_parameters
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mark/Project/TestingROS_Gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating moc_qadd.cxx"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/lib/x86_64-linux-gnu/qt4/bin/moc @/home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx_parameters

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/flags.make
qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o: /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/qadd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Project/TestingROS_Gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/qadd_server.dir/qadd.cpp.o -c /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/qadd.cpp

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qadd_server.dir/qadd.cpp.i"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/qadd.cpp > CMakeFiles/qadd_server.dir/qadd.cpp.i

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qadd_server.dir/qadd.cpp.s"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/qadd.cpp -o CMakeFiles/qadd_server.dir/qadd.cpp.s

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.requires:

.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.requires

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.provides: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.requires
	$(MAKE) -f qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/build.make qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.provides.build
.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.provides

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.provides.build: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o


qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/flags.make
qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o: /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Project/TestingROS_Gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/qadd_server.dir/main.cpp.o -c /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/main.cpp

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qadd_server.dir/main.cpp.i"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/main.cpp > CMakeFiles/qadd_server.dir/main.cpp.i

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qadd_server.dir/main.cpp.s"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server/main.cpp -o CMakeFiles/qadd_server.dir/main.cpp.s

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.requires:

.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.requires

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.provides: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.requires
	$(MAKE) -f qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/build.make qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.provides.build
.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.provides

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.provides.build: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o


qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/flags.make
qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o: qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Project/TestingROS_Gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/qadd_server.dir/moc_qadd.cxx.o -c /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qadd_server.dir/moc_qadd.cxx.i"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx > CMakeFiles/qadd_server.dir/moc_qadd.cxx.i

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qadd_server.dir/moc_qadd.cxx.s"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx -o CMakeFiles/qadd_server.dir/moc_qadd.cxx.s

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.requires:

.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.requires

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.provides: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.requires
	$(MAKE) -f qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/build.make qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.provides.build
.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.provides

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.provides.build: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o


# Object files for target qadd_server
qadd_server_OBJECTS = \
"CMakeFiles/qadd_server.dir/qadd.cpp.o" \
"CMakeFiles/qadd_server.dir/main.cpp.o" \
"CMakeFiles/qadd_server.dir/moc_qadd.cxx.o"

# External object files for target qadd_server
qadd_server_EXTERNAL_OBJECTS =

/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/build.make
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /home/mark/Project/TestingROS_Gui/devel/lib/libqtutorials.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libQtGui.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libQtCore.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/libroscpp.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/librosconsole.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/librostime.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /opt/ros/kinetic/lib/libcpp_common.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mark/Project/TestingROS_Gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable /home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server"
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qadd_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/build: /home/mark/Project/TestingROS_Gui/devel/lib/qt_tutorials/qadd_server

.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/build

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/requires: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/qadd.cpp.o.requires
qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/requires: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/main.cpp.o.requires
qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/requires: qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/moc_qadd.cxx.o.requires

.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/requires

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/clean:
	cd /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server && $(CMAKE_COMMAND) -P CMakeFiles/qadd_server.dir/cmake_clean.cmake
.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/clean

qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/depend: qt_ros/qt_tutorials/qadd_server/moc_qadd.cxx
	cd /home/mark/Project/TestingROS_Gui/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/Project/TestingROS_Gui/src /home/mark/Project/TestingROS_Gui/src/qt_ros/qt_tutorials/qadd_server /home/mark/Project/TestingROS_Gui/build /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server /home/mark/Project/TestingROS_Gui/build/qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qt_ros/qt_tutorials/qadd_server/CMakeFiles/qadd_server.dir/depend

