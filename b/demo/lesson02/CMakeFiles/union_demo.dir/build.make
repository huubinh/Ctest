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
include demo/lesson02/CMakeFiles/union_demo.dir/depend.make

# Include the progress variables for this target.
include demo/lesson02/CMakeFiles/union_demo.dir/progress.make

# Include the compile flags for this target's objects.
include demo/lesson02/CMakeFiles/union_demo.dir/flags.make

demo/lesson02/CMakeFiles/union_demo.dir/union_demo.c.o: demo/lesson02/CMakeFiles/union_demo.dir/flags.make
demo/lesson02/CMakeFiles/union_demo.dir/union_demo.c.o: ../demo/lesson02/union_demo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/lesson02/CMakeFiles/union_demo.dir/union_demo.c.o"
	cd /home/binh/Desktop/Ctest/b/demo/lesson02 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/union_demo.dir/union_demo.c.o   -c /home/binh/Desktop/Ctest/demo/lesson02/union_demo.c

demo/lesson02/CMakeFiles/union_demo.dir/union_demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/union_demo.dir/union_demo.c.i"
	cd /home/binh/Desktop/Ctest/b/demo/lesson02 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/binh/Desktop/Ctest/demo/lesson02/union_demo.c > CMakeFiles/union_demo.dir/union_demo.c.i

demo/lesson02/CMakeFiles/union_demo.dir/union_demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/union_demo.dir/union_demo.c.s"
	cd /home/binh/Desktop/Ctest/b/demo/lesson02 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/binh/Desktop/Ctest/demo/lesson02/union_demo.c -o CMakeFiles/union_demo.dir/union_demo.c.s

# Object files for target union_demo
union_demo_OBJECTS = \
"CMakeFiles/union_demo.dir/union_demo.c.o"

# External object files for target union_demo
union_demo_EXTERNAL_OBJECTS =

demo/lesson02/union_demo: demo/lesson02/CMakeFiles/union_demo.dir/union_demo.c.o
demo/lesson02/union_demo: demo/lesson02/CMakeFiles/union_demo.dir/build.make
demo/lesson02/union_demo: demo/lesson02/CMakeFiles/union_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable union_demo"
	cd /home/binh/Desktop/Ctest/b/demo/lesson02 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/union_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/lesson02/CMakeFiles/union_demo.dir/build: demo/lesson02/union_demo

.PHONY : demo/lesson02/CMakeFiles/union_demo.dir/build

demo/lesson02/CMakeFiles/union_demo.dir/clean:
	cd /home/binh/Desktop/Ctest/b/demo/lesson02 && $(CMAKE_COMMAND) -P CMakeFiles/union_demo.dir/cmake_clean.cmake
.PHONY : demo/lesson02/CMakeFiles/union_demo.dir/clean

demo/lesson02/CMakeFiles/union_demo.dir/depend:
	cd /home/binh/Desktop/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/binh/Desktop/Ctest /home/binh/Desktop/Ctest/demo/lesson02 /home/binh/Desktop/Ctest/b /home/binh/Desktop/Ctest/b/demo/lesson02 /home/binh/Desktop/Ctest/b/demo/lesson02/CMakeFiles/union_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/lesson02/CMakeFiles/union_demo.dir/depend

