# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/boong/Ctest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/boong/Ctest/build

# Include any dependencies generated for this target.
include CMakeFiles/btUsing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/btUsing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/btUsing.dir/flags.make

CMakeFiles/btUsing.dir/mycode/btUsing.c.o: CMakeFiles/btUsing.dir/flags.make
CMakeFiles/btUsing.dir/mycode/btUsing.c.o: ../mycode/btUsing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/btUsing.dir/mycode/btUsing.c.o"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/btUsing.dir/mycode/btUsing.c.o   -c /home/boong/Ctest/mycode/btUsing.c

CMakeFiles/btUsing.dir/mycode/btUsing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/btUsing.dir/mycode/btUsing.c.i"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/mycode/btUsing.c > CMakeFiles/btUsing.dir/mycode/btUsing.c.i

CMakeFiles/btUsing.dir/mycode/btUsing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/btUsing.dir/mycode/btUsing.c.s"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/mycode/btUsing.c -o CMakeFiles/btUsing.dir/mycode/btUsing.c.s

# Object files for target btUsing
btUsing_OBJECTS = \
"CMakeFiles/btUsing.dir/mycode/btUsing.c.o"

# External object files for target btUsing
btUsing_EXTERNAL_OBJECTS =

btUsing: CMakeFiles/btUsing.dir/mycode/btUsing.c.o
btUsing: CMakeFiles/btUsing.dir/build.make
btUsing: cmake-btree/libbt.a
btUsing: CMakeFiles/btUsing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable btUsing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/btUsing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/btUsing.dir/build: btUsing

.PHONY : CMakeFiles/btUsing.dir/build

CMakeFiles/btUsing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/btUsing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/btUsing.dir/clean

CMakeFiles/btUsing.dir/depend:
	cd /home/boong/Ctest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boong/Ctest /home/boong/Ctest /home/boong/Ctest/build /home/boong/Ctest/build /home/boong/Ctest/build/CMakeFiles/btUsing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/btUsing.dir/depend

