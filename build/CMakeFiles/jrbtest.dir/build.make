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
include CMakeFiles/jrbtest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jrbtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jrbtest.dir/flags.make

CMakeFiles/jrbtest.dir/mycode/cjset.c.o: CMakeFiles/jrbtest.dir/flags.make
CMakeFiles/jrbtest.dir/mycode/cjset.c.o: ../mycode/cjset.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/jrbtest.dir/mycode/cjset.c.o"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/jrbtest.dir/mycode/cjset.c.o   -c /home/boong/Ctest/mycode/cjset.c

CMakeFiles/jrbtest.dir/mycode/cjset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jrbtest.dir/mycode/cjset.c.i"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/mycode/cjset.c > CMakeFiles/jrbtest.dir/mycode/cjset.c.i

CMakeFiles/jrbtest.dir/mycode/cjset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jrbtest.dir/mycode/cjset.c.s"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/mycode/cjset.c -o CMakeFiles/jrbtest.dir/mycode/cjset.c.s

CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.o: CMakeFiles/jrbtest.dir/flags.make
CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.o: ../mycode/cjset_t1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.o"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.o   -c /home/boong/Ctest/mycode/cjset_t1.c

CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.i"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/mycode/cjset_t1.c > CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.i

CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.s"
	/bin/gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/mycode/cjset_t1.c -o CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.s

# Object files for target jrbtest
jrbtest_OBJECTS = \
"CMakeFiles/jrbtest.dir/mycode/cjset.c.o" \
"CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.o"

# External object files for target jrbtest
jrbtest_EXTERNAL_OBJECTS =

jrbtest: CMakeFiles/jrbtest.dir/mycode/cjset.c.o
jrbtest: CMakeFiles/jrbtest.dir/mycode/cjset_t1.c.o
jrbtest: CMakeFiles/jrbtest.dir/build.make
jrbtest: libfdr/libfdr.a
jrbtest: CMakeFiles/jrbtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boong/Ctest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable jrbtest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jrbtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jrbtest.dir/build: jrbtest

.PHONY : CMakeFiles/jrbtest.dir/build

CMakeFiles/jrbtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jrbtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jrbtest.dir/clean

CMakeFiles/jrbtest.dir/depend:
	cd /home/boong/Ctest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boong/Ctest /home/boong/Ctest /home/boong/Ctest/build /home/boong/Ctest/build /home/boong/Ctest/build/CMakeFiles/jrbtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jrbtest.dir/depend

