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
include chat_model/CMakeFiles/chat_model.dir/depend.make

# Include the progress variables for this target.
include chat_model/CMakeFiles/chat_model.dir/progress.make

# Include the compile flags for this target's objects.
include chat_model/CMakeFiles/chat_model.dir/flags.make

chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o: chat_model/CMakeFiles/chat_model.dir/flags.make
chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o: ../chat_model/src/Display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_model.dir/src/Display.cpp.o -c /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/Display.cpp

chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_model.dir/src/Display.cpp.i"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/Display.cpp > CMakeFiles/chat_model.dir/src/Display.cpp.i

chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_model.dir/src/Display.cpp.s"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/Display.cpp -o CMakeFiles/chat_model.dir/src/Display.cpp.s

chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.requires:

.PHONY : chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.requires

chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.provides: chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.requires
	$(MAKE) -f chat_model/CMakeFiles/chat_model.dir/build.make chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.provides.build
.PHONY : chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.provides

chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.provides.build: chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o


chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o: chat_model/CMakeFiles/chat_model.dir/flags.make
chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o: ../chat_model/src/Keyboard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_model.dir/src/Keyboard.cpp.o -c /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/Keyboard.cpp

chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_model.dir/src/Keyboard.cpp.i"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/Keyboard.cpp > CMakeFiles/chat_model.dir/src/Keyboard.cpp.i

chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_model.dir/src/Keyboard.cpp.s"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/Keyboard.cpp -o CMakeFiles/chat_model.dir/src/Keyboard.cpp.s

chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.requires:

.PHONY : chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.requires

chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.provides: chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.requires
	$(MAKE) -f chat_model/CMakeFiles/chat_model.dir/build.make chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.provides.build
.PHONY : chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.provides

chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.provides.build: chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o


chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o: chat_model/CMakeFiles/chat_model.dir/flags.make
chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o: ../chat_model/src/FileReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_model.dir/src/FileReader.cpp.o -c /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/FileReader.cpp

chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_model.dir/src/FileReader.cpp.i"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/FileReader.cpp > CMakeFiles/chat_model.dir/src/FileReader.cpp.i

chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_model.dir/src/FileReader.cpp.s"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model/src/FileReader.cpp -o CMakeFiles/chat_model.dir/src/FileReader.cpp.s

chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.requires:

.PHONY : chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.requires

chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.provides: chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.requires
	$(MAKE) -f chat_model/CMakeFiles/chat_model.dir/build.make chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.provides.build
.PHONY : chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.provides

chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.provides.build: chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o


# Object files for target chat_model
chat_model_OBJECTS = \
"CMakeFiles/chat_model.dir/src/Display.cpp.o" \
"CMakeFiles/chat_model.dir/src/Keyboard.cpp.o" \
"CMakeFiles/chat_model.dir/src/FileReader.cpp.o"

# External object files for target chat_model
chat_model_EXTERNAL_OBJECTS =

devel/lib/libchat_model.so: chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o
devel/lib/libchat_model.so: chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o
devel/lib/libchat_model.so: chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o
devel/lib/libchat_model.so: chat_model/CMakeFiles/chat_model.dir/build.make
devel/lib/libchat_model.so: chat_model/CMakeFiles/chat_model.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../devel/lib/libchat_model.so"
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chat_model.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chat_model/CMakeFiles/chat_model.dir/build: devel/lib/libchat_model.so

.PHONY : chat_model/CMakeFiles/chat_model.dir/build

chat_model/CMakeFiles/chat_model.dir/requires: chat_model/CMakeFiles/chat_model.dir/src/Display.cpp.o.requires
chat_model/CMakeFiles/chat_model.dir/requires: chat_model/CMakeFiles/chat_model.dir/src/Keyboard.cpp.o.requires
chat_model/CMakeFiles/chat_model.dir/requires: chat_model/CMakeFiles/chat_model.dir/src/FileReader.cpp.o.requires

.PHONY : chat_model/CMakeFiles/chat_model.dir/requires

chat_model/CMakeFiles/chat_model.dir/clean:
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model && $(CMAKE_COMMAND) -P CMakeFiles/chat_model.dir/cmake_clean.cmake
.PHONY : chat_model/CMakeFiles/chat_model.dir/clean

chat_model/CMakeFiles/chat_model.dir/depend:
	cd /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/chat_model /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model /home/mark/Github/ROS-Gui-Chatter/TestingROS_Gui/src/cmake-build-debug/chat_model/CMakeFiles/chat_model.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chat_model/CMakeFiles/chat_model.dir/depend

