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
include CMakeFiles/order.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/order.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/order.dir/flags.make

CMakeFiles/order.dir/mycode/order_t1.c.o: CMakeFiles/order.dir/flags.make
CMakeFiles/order.dir/mycode/order_t1.c.o: ../mycode/order_t1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/order.dir/mycode/order_t1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/order.dir/mycode/order_t1.c.o   -c /home/sinhvien/Ctest/mycode/order_t1.c

CMakeFiles/order.dir/mycode/order_t1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/order.dir/mycode/order_t1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sinhvien/Ctest/mycode/order_t1.c > CMakeFiles/order.dir/mycode/order_t1.c.i

CMakeFiles/order.dir/mycode/order_t1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/order.dir/mycode/order_t1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sinhvien/Ctest/mycode/order_t1.c -o CMakeFiles/order.dir/mycode/order_t1.c.s

CMakeFiles/order.dir/mycode/order_t1.c.o.requires:

.PHONY : CMakeFiles/order.dir/mycode/order_t1.c.o.requires

CMakeFiles/order.dir/mycode/order_t1.c.o.provides: CMakeFiles/order.dir/mycode/order_t1.c.o.requires
	$(MAKE) -f CMakeFiles/order.dir/build.make CMakeFiles/order.dir/mycode/order_t1.c.o.provides.build
.PHONY : CMakeFiles/order.dir/mycode/order_t1.c.o.provides

CMakeFiles/order.dir/mycode/order_t1.c.o.provides.build: CMakeFiles/order.dir/mycode/order_t1.c.o


CMakeFiles/order.dir/mycode/order.c.o: CMakeFiles/order.dir/flags.make
CMakeFiles/order.dir/mycode/order.c.o: ../mycode/order.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/order.dir/mycode/order.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/order.dir/mycode/order.c.o   -c /home/sinhvien/Ctest/mycode/order.c

CMakeFiles/order.dir/mycode/order.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/order.dir/mycode/order.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sinhvien/Ctest/mycode/order.c > CMakeFiles/order.dir/mycode/order.c.i

CMakeFiles/order.dir/mycode/order.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/order.dir/mycode/order.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sinhvien/Ctest/mycode/order.c -o CMakeFiles/order.dir/mycode/order.c.s

CMakeFiles/order.dir/mycode/order.c.o.requires:

.PHONY : CMakeFiles/order.dir/mycode/order.c.o.requires

CMakeFiles/order.dir/mycode/order.c.o.provides: CMakeFiles/order.dir/mycode/order.c.o.requires
	$(MAKE) -f CMakeFiles/order.dir/build.make CMakeFiles/order.dir/mycode/order.c.o.provides.build
.PHONY : CMakeFiles/order.dir/mycode/order.c.o.provides

CMakeFiles/order.dir/mycode/order.c.o.provides.build: CMakeFiles/order.dir/mycode/order.c.o


# Object files for target order
order_OBJECTS = \
"CMakeFiles/order.dir/mycode/order_t1.c.o" \
"CMakeFiles/order.dir/mycode/order.c.o"

# External object files for target order
order_EXTERNAL_OBJECTS =

order: CMakeFiles/order.dir/mycode/order_t1.c.o
order: CMakeFiles/order.dir/mycode/order.c.o
order: CMakeFiles/order.dir/build.make
order: CMakeFiles/order.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sinhvien/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable order"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/order.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/order.dir/build: order

.PHONY : CMakeFiles/order.dir/build

CMakeFiles/order.dir/requires: CMakeFiles/order.dir/mycode/order_t1.c.o.requires
CMakeFiles/order.dir/requires: CMakeFiles/order.dir/mycode/order.c.o.requires

.PHONY : CMakeFiles/order.dir/requires

CMakeFiles/order.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/order.dir/cmake_clean.cmake
.PHONY : CMakeFiles/order.dir/clean

CMakeFiles/order.dir/depend:
	cd /home/sinhvien/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sinhvien/Ctest /home/sinhvien/Ctest /home/sinhvien/Ctest/b /home/sinhvien/Ctest/b /home/sinhvien/Ctest/b/CMakeFiles/order.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/order.dir/depend

