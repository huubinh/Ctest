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
include demo/lesson08/CMakeFiles/graph_adjacency.dir/depend.make

# Include the progress variables for this target.
include demo/lesson08/CMakeFiles/graph_adjacency.dir/progress.make

# Include the compile flags for this target's objects.
include demo/lesson08/CMakeFiles/graph_adjacency.dir/flags.make

demo/lesson08/CMakeFiles/graph_adjacency.dir/graph_adjacency.c.o: demo/lesson08/CMakeFiles/graph_adjacency.dir/flags.make
demo/lesson08/CMakeFiles/graph_adjacency.dir/graph_adjacency.c.o: ../demo/lesson08/graph_adjacency.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/lesson08/CMakeFiles/graph_adjacency.dir/graph_adjacency.c.o"
	cd /home/binh/Desktop/Ctest/b/demo/lesson08 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/graph_adjacency.dir/graph_adjacency.c.o   -c /home/binh/Desktop/Ctest/demo/lesson08/graph_adjacency.c

demo/lesson08/CMakeFiles/graph_adjacency.dir/graph_adjacency.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/graph_adjacency.dir/graph_adjacency.c.i"
	cd /home/binh/Desktop/Ctest/b/demo/lesson08 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/binh/Desktop/Ctest/demo/lesson08/graph_adjacency.c > CMakeFiles/graph_adjacency.dir/graph_adjacency.c.i

demo/lesson08/CMakeFiles/graph_adjacency.dir/graph_adjacency.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/graph_adjacency.dir/graph_adjacency.c.s"
	cd /home/binh/Desktop/Ctest/b/demo/lesson08 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/binh/Desktop/Ctest/demo/lesson08/graph_adjacency.c -o CMakeFiles/graph_adjacency.dir/graph_adjacency.c.s

# Object files for target graph_adjacency
graph_adjacency_OBJECTS = \
"CMakeFiles/graph_adjacency.dir/graph_adjacency.c.o"

# External object files for target graph_adjacency
graph_adjacency_EXTERNAL_OBJECTS =

demo/lesson08/graph_adjacency: demo/lesson08/CMakeFiles/graph_adjacency.dir/graph_adjacency.c.o
demo/lesson08/graph_adjacency: demo/lesson08/CMakeFiles/graph_adjacency.dir/build.make
demo/lesson08/graph_adjacency: ../binaries/libigraph.a
demo/lesson08/graph_adjacency: demo/lesson08/CMakeFiles/graph_adjacency.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable graph_adjacency"
	cd /home/binh/Desktop/Ctest/b/demo/lesson08 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graph_adjacency.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/lesson08/CMakeFiles/graph_adjacency.dir/build: demo/lesson08/graph_adjacency

.PHONY : demo/lesson08/CMakeFiles/graph_adjacency.dir/build

demo/lesson08/CMakeFiles/graph_adjacency.dir/clean:
	cd /home/binh/Desktop/Ctest/b/demo/lesson08 && $(CMAKE_COMMAND) -P CMakeFiles/graph_adjacency.dir/cmake_clean.cmake
.PHONY : demo/lesson08/CMakeFiles/graph_adjacency.dir/clean

demo/lesson08/CMakeFiles/graph_adjacency.dir/depend:
	cd /home/binh/Desktop/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/binh/Desktop/Ctest /home/binh/Desktop/Ctest/demo/lesson08 /home/binh/Desktop/Ctest/b /home/binh/Desktop/Ctest/b/demo/lesson08 /home/binh/Desktop/Ctest/b/demo/lesson08/CMakeFiles/graph_adjacency.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/lesson08/CMakeFiles/graph_adjacency.dir/depend

