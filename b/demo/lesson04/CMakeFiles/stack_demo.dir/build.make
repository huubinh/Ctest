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
include demo/lesson04/CMakeFiles/stack_demo.dir/depend.make

# Include the progress variables for this target.
include demo/lesson04/CMakeFiles/stack_demo.dir/progress.make

# Include the compile flags for this target's objects.
include demo/lesson04/CMakeFiles/stack_demo.dir/flags.make

demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o: demo/lesson04/CMakeFiles/stack_demo.dir/flags.make
demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o: ../demo/lesson04/examples/cstack_example.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stack_demo.dir/examples/cstack_example.c.o   -c /home/sinhvien/Ctest/demo/lesson04/examples/cstack_example.c

demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stack_demo.dir/examples/cstack_example.c.i"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sinhvien/Ctest/demo/lesson04/examples/cstack_example.c > CMakeFiles/stack_demo.dir/examples/cstack_example.c.i

demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stack_demo.dir/examples/cstack_example.c.s"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sinhvien/Ctest/demo/lesson04/examples/cstack_example.c -o CMakeFiles/stack_demo.dir/examples/cstack_example.c.s

demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.requires:

.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.requires

demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.provides: demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.requires
	$(MAKE) -f demo/lesson04/CMakeFiles/stack_demo.dir/build.make demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.provides.build
.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.provides

demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.provides.build: demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o


demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o: demo/lesson04/CMakeFiles/stack_demo.dir/flags.make
demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o: ../demo/lesson04/cstack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stack_demo.dir/cstack.c.o   -c /home/sinhvien/Ctest/demo/lesson04/cstack.c

demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stack_demo.dir/cstack.c.i"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sinhvien/Ctest/demo/lesson04/cstack.c > CMakeFiles/stack_demo.dir/cstack.c.i

demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stack_demo.dir/cstack.c.s"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sinhvien/Ctest/demo/lesson04/cstack.c -o CMakeFiles/stack_demo.dir/cstack.c.s

demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.requires:

.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.requires

demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.provides: demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.requires
	$(MAKE) -f demo/lesson04/CMakeFiles/stack_demo.dir/build.make demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.provides.build
.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.provides

demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.provides.build: demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o


# Object files for target stack_demo
stack_demo_OBJECTS = \
"CMakeFiles/stack_demo.dir/examples/cstack_example.c.o" \
"CMakeFiles/stack_demo.dir/cstack.c.o"

# External object files for target stack_demo
stack_demo_EXTERNAL_OBJECTS =

demo/lesson04/stack_demo: demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o
demo/lesson04/stack_demo: demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o
demo/lesson04/stack_demo: demo/lesson04/CMakeFiles/stack_demo.dir/build.make
demo/lesson04/stack_demo: libfdr/libfdr.a
demo/lesson04/stack_demo: demo/lesson04/CMakeFiles/stack_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable stack_demo"
	cd /home/sinhvien/Ctest/b/demo/lesson04 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stack_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/lesson04/CMakeFiles/stack_demo.dir/build: demo/lesson04/stack_demo

.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/build

demo/lesson04/CMakeFiles/stack_demo.dir/requires: demo/lesson04/CMakeFiles/stack_demo.dir/examples/cstack_example.c.o.requires
demo/lesson04/CMakeFiles/stack_demo.dir/requires: demo/lesson04/CMakeFiles/stack_demo.dir/cstack.c.o.requires

.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/requires

demo/lesson04/CMakeFiles/stack_demo.dir/clean:
	cd /home/sinhvien/Ctest/b/demo/lesson04 && $(CMAKE_COMMAND) -P CMakeFiles/stack_demo.dir/cmake_clean.cmake
.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/clean

demo/lesson04/CMakeFiles/stack_demo.dir/depend:
	cd /home/sinhvien/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sinhvien/Ctest /home/sinhvien/Ctest/demo/lesson04 /home/sinhvien/Ctest/b /home/sinhvien/Ctest/b/demo/lesson04 /home/sinhvien/Ctest/b/demo/lesson04/CMakeFiles/stack_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/lesson04/CMakeFiles/stack_demo.dir/depend

