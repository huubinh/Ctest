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
include CMakeFiles/readbt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/readbt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/readbt.dir/flags.make

CMakeFiles/readbt.dir/mycode/readbt.c.o: CMakeFiles/readbt.dir/flags.make
CMakeFiles/readbt.dir/mycode/readbt.c.o: ../mycode/readbt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/readbt.dir/mycode/readbt.c.o"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/readbt.dir/mycode/readbt.c.o   -c /home/boong/Ctest/mycode/readbt.c

CMakeFiles/readbt.dir/mycode/readbt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/readbt.dir/mycode/readbt.c.i"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/mycode/readbt.c > CMakeFiles/readbt.dir/mycode/readbt.c.i

CMakeFiles/readbt.dir/mycode/readbt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/readbt.dir/mycode/readbt.c.s"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/mycode/readbt.c -o CMakeFiles/readbt.dir/mycode/readbt.c.s

# Object files for target readbt
readbt_OBJECTS = \
"CMakeFiles/readbt.dir/mycode/readbt.c.o"

# External object files for target readbt
readbt_EXTERNAL_OBJECTS =

readbt: CMakeFiles/readbt.dir/mycode/readbt.c.o
readbt: CMakeFiles/readbt.dir/build.make
readbt: cmake-btree/libbt.a
readbt: CMakeFiles/readbt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable readbt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/readbt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/readbt.dir/build: readbt

.PHONY : CMakeFiles/readbt.dir/build

CMakeFiles/readbt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/readbt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/readbt.dir/clean

CMakeFiles/readbt.dir/depend:
	cd /home/boong/Ctest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boong/Ctest /home/boong/Ctest /home/boong/Ctest/build /home/boong/Ctest/build /home/boong/Ctest/build/CMakeFiles/readbt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/readbt.dir/depend
