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
include demo/lesson03/CMakeFiles/vector_demo3.dir/depend.make

# Include the progress variables for this target.
include demo/lesson03/CMakeFiles/vector_demo3.dir/progress.make

# Include the compile flags for this target's objects.
include demo/lesson03/CMakeFiles/vector_demo3.dir/flags.make

demo/lesson03/CMakeFiles/vector_demo3.dir/vector_demo3.c.o: demo/lesson03/CMakeFiles/vector_demo3.dir/flags.make
demo/lesson03/CMakeFiles/vector_demo3.dir/vector_demo3.c.o: ../demo/lesson03/vector_demo3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/lesson03/CMakeFiles/vector_demo3.dir/vector_demo3.c.o"
	cd /home/binh/Desktop/Ctest/b/demo/lesson03 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vector_demo3.dir/vector_demo3.c.o   -c /home/binh/Desktop/Ctest/demo/lesson03/vector_demo3.c

demo/lesson03/CMakeFiles/vector_demo3.dir/vector_demo3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vector_demo3.dir/vector_demo3.c.i"
	cd /home/binh/Desktop/Ctest/b/demo/lesson03 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/binh/Desktop/Ctest/demo/lesson03/vector_demo3.c > CMakeFiles/vector_demo3.dir/vector_demo3.c.i

demo/lesson03/CMakeFiles/vector_demo3.dir/vector_demo3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vector_demo3.dir/vector_demo3.c.s"
	cd /home/binh/Desktop/Ctest/b/demo/lesson03 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/binh/Desktop/Ctest/demo/lesson03/vector_demo3.c -o CMakeFiles/vector_demo3.dir/vector_demo3.c.s

# Object files for target vector_demo3
vector_demo3_OBJECTS = \
"CMakeFiles/vector_demo3.dir/vector_demo3.c.o"

# External object files for target vector_demo3
vector_demo3_EXTERNAL_OBJECTS =

demo/lesson03/vector_demo3: demo/lesson03/CMakeFiles/vector_demo3.dir/vector_demo3.c.o
demo/lesson03/vector_demo3: demo/lesson03/CMakeFiles/vector_demo3.dir/build.make
demo/lesson03/vector_demo3: DebugPrintf/libdebug_printf.a
demo/lesson03/vector_demo3: demo/lesson03/CMakeFiles/vector_demo3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/binh/Desktop/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable vector_demo3"
	cd /home/binh/Desktop/Ctest/b/demo/lesson03 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vector_demo3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/lesson03/CMakeFiles/vector_demo3.dir/build: demo/lesson03/vector_demo3

.PHONY : demo/lesson03/CMakeFiles/vector_demo3.dir/build

demo/lesson03/CMakeFiles/vector_demo3.dir/clean:
	cd /home/binh/Desktop/Ctest/b/demo/lesson03 && $(CMAKE_COMMAND) -P CMakeFiles/vector_demo3.dir/cmake_clean.cmake
.PHONY : demo/lesson03/CMakeFiles/vector_demo3.dir/clean

demo/lesson03/CMakeFiles/vector_demo3.dir/depend:
	cd /home/binh/Desktop/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/binh/Desktop/Ctest /home/binh/Desktop/Ctest/demo/lesson03 /home/binh/Desktop/Ctest/b /home/binh/Desktop/Ctest/b/demo/lesson03 /home/binh/Desktop/Ctest/b/demo/lesson03/CMakeFiles/vector_demo3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/lesson03/CMakeFiles/vector_demo3.dir/depend

