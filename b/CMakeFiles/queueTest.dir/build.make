# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/binh/Desktop/Ctest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/binh/Desktop/Ctest/b

# Include any dependencies generated for this target.
include CMakeFiles/queueTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/queueTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/queueTest.dir/flags.make

CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.o: CMakeFiles/queueTest.dir/flags.make
CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.o: ../mycode/cqueue_t1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.o   -c /home/binh/Desktop/Ctest/mycode/cqueue_t1.c

CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/binh/Desktop/Ctest/mycode/cqueue_t1.c > CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.i

CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/binh/Desktop/Ctest/mycode/cqueue_t1.c -o CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.s

CMakeFiles/queueTest.dir/mycode/cqueue.c.o: CMakeFiles/queueTest.dir/flags.make
CMakeFiles/queueTest.dir/mycode/cqueue.c.o: ../mycode/cqueue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/queueTest.dir/mycode/cqueue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/queueTest.dir/mycode/cqueue.c.o   -c /home/binh/Desktop/Ctest/mycode/cqueue.c

CMakeFiles/queueTest.dir/mycode/cqueue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/queueTest.dir/mycode/cqueue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/binh/Desktop/Ctest/mycode/cqueue.c > CMakeFiles/queueTest.dir/mycode/cqueue.c.i

CMakeFiles/queueTest.dir/mycode/cqueue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/queueTest.dir/mycode/cqueue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/binh/Desktop/Ctest/mycode/cqueue.c -o CMakeFiles/queueTest.dir/mycode/cqueue.c.s

# Object files for target queueTest
queueTest_OBJECTS = \
"CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.o" \
"CMakeFiles/queueTest.dir/mycode/cqueue.c.o"

# External object files for target queueTest
queueTest_EXTERNAL_OBJECTS =

queueTest: CMakeFiles/queueTest.dir/mycode/cqueue_t1.c.o
queueTest: CMakeFiles/queueTest.dir/mycode/cqueue.c.o
queueTest: CMakeFiles/queueTest.dir/build.make
queueTest: libfdr/libfdr.a
queueTest: CMakeFiles/queueTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable queueTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/queueTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/queueTest.dir/build: queueTest

.PHONY : CMakeFiles/queueTest.dir/build

CMakeFiles/queueTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/queueTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/queueTest.dir/clean

CMakeFiles/queueTest.dir/depend:
	cd /home/binh/Desktop/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/binh/Desktop/Ctest /home/binh/Desktop/Ctest /home/binh/Desktop/Ctest/b /home/binh/Desktop/Ctest/b /home/binh/Desktop/Ctest/b/CMakeFiles/queueTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/queueTest.dir/depend

