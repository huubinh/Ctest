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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sinhvien/Ctest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sinhvien/Ctest/b

# Include any dependencies generated for this target.
include demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/depend.make

# Include the progress variables for this target.
include demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/progress.make

# Include the compile flags for this target's objects.
include demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/flags.make

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/flags.make
demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o: ../demo/lesson05/jrb_ni_sort1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o"
	cd /home/sinhvien/Ctest/b/demo/lesson05 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o   -c /home/sinhvien/Ctest/demo/lesson05/jrb_ni_sort1.c

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.i"
	cd /home/sinhvien/Ctest/b/demo/lesson05 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sinhvien/Ctest/demo/lesson05/jrb_ni_sort1.c > CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.i

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.s"
	cd /home/sinhvien/Ctest/b/demo/lesson05 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sinhvien/Ctest/demo/lesson05/jrb_ni_sort1.c -o CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.s

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.requires:

.PHONY : demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.requires

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.provides: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.requires
	$(MAKE) -f demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/build.make demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.provides.build
.PHONY : demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.provides

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.provides.build: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o


# Object files for target jrb_ni_sort1
jrb_ni_sort1_OBJECTS = \
"CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o"

# External object files for target jrb_ni_sort1
jrb_ni_sort1_EXTERNAL_OBJECTS =

demo/lesson05/jrb_ni_sort1: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o
demo/lesson05/jrb_ni_sort1: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/build.make
demo/lesson05/jrb_ni_sort1: libfdr/libfdr.a
demo/lesson05/jrb_ni_sort1: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable jrb_ni_sort1"
	cd /home/sinhvien/Ctest/b/demo/lesson05 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jrb_ni_sort1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/build: demo/lesson05/jrb_ni_sort1

.PHONY : demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/build

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/requires: demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/jrb_ni_sort1.c.o.requires

.PHONY : demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/requires

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/clean:
	cd /home/sinhvien/Ctest/b/demo/lesson05 && $(CMAKE_COMMAND) -P CMakeFiles/jrb_ni_sort1.dir/cmake_clean.cmake
.PHONY : demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/clean

demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/depend:
	cd /home/sinhvien/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sinhvien/Ctest /home/sinhvien/Ctest/demo/lesson05 /home/sinhvien/Ctest/b /home/sinhvien/Ctest/b/demo/lesson05 /home/sinhvien/Ctest/b/demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/lesson05/CMakeFiles/jrb_ni_sort1.dir/depend

