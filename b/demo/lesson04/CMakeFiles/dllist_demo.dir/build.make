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
include demo/lesson04/CMakeFiles/dllist_demo.dir/depend.make

# Include the progress variables for this target.
include demo/lesson04/CMakeFiles/dllist_demo.dir/progress.make

# Include the compile flags for this target's objects.
include demo/lesson04/CMakeFiles/dllist_demo.dir/flags.make

demo/lesson04/CMakeFiles/dllist_demo.dir/dllist_demo.c.o: demo/lesson04/CMakeFiles/dllist_demo.dir/flags.make
demo/lesson04/CMakeFiles/dllist_demo.dir/dllist_demo.c.o: ../demo/lesson04/dllist_demo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/lesson04/CMakeFiles/dllist_demo.dir/dllist_demo.c.o"
	cd /home/binh/Desktop/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dllist_demo.dir/dllist_demo.c.o   -c /home/binh/Desktop/Ctest/demo/lesson04/dllist_demo.c

demo/lesson04/CMakeFiles/dllist_demo.dir/dllist_demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dllist_demo.dir/dllist_demo.c.i"
	cd /home/binh/Desktop/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/binh/Desktop/Ctest/demo/lesson04/dllist_demo.c > CMakeFiles/dllist_demo.dir/dllist_demo.c.i

demo/lesson04/CMakeFiles/dllist_demo.dir/dllist_demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dllist_demo.dir/dllist_demo.c.s"
	cd /home/binh/Desktop/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/binh/Desktop/Ctest/demo/lesson04/dllist_demo.c -o CMakeFiles/dllist_demo.dir/dllist_demo.c.s

# Object files for target dllist_demo
dllist_demo_OBJECTS = \
"CMakeFiles/dllist_demo.dir/dllist_demo.c.o"

# External object files for target dllist_demo
dllist_demo_EXTERNAL_OBJECTS =

demo/lesson04/dllist_demo: demo/lesson04/CMakeFiles/dllist_demo.dir/dllist_demo.c.o
demo/lesson04/dllist_demo: demo/lesson04/CMakeFiles/dllist_demo.dir/build.make
demo/lesson04/dllist_demo: DebugPrintf/libdebug_printf.a
demo/lesson04/dllist_demo: libfdr/libfdr.a
demo/lesson04/dllist_demo: demo/lesson04/CMakeFiles/dllist_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dllist_demo"
	cd /home/binh/Desktop/Ctest/b/demo/lesson04 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dllist_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/lesson04/CMakeFiles/dllist_demo.dir/build: demo/lesson04/dllist_demo

.PHONY : demo/lesson04/CMakeFiles/dllist_demo.dir/build

demo/lesson04/CMakeFiles/dllist_demo.dir/clean:
	cd /home/binh/Desktop/Ctest/b/demo/lesson04 && $(CMAKE_COMMAND) -P CMakeFiles/dllist_demo.dir/cmake_clean.cmake
.PHONY : demo/lesson04/CMakeFiles/dllist_demo.dir/clean

demo/lesson04/CMakeFiles/dllist_demo.dir/depend:
	cd /home/binh/Desktop/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/binh/Desktop/Ctest /home/binh/Desktop/Ctest/demo/lesson04 /home/binh/Desktop/Ctest/b /home/binh/Desktop/Ctest/b/demo/lesson04 /home/binh/Desktop/Ctest/b/demo/lesson04/CMakeFiles/dllist_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/lesson04/CMakeFiles/dllist_demo.dir/depend

