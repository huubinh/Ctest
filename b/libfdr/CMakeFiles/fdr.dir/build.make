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
CMAKE_BINARY_DIR = /home/boong/Ctest/b

# Include any dependencies generated for this target.
include libfdr/CMakeFiles/fdr.dir/depend.make

# Include the progress variables for this target.
include libfdr/CMakeFiles/fdr.dir/progress.make

# Include the compile flags for this target's objects.
include libfdr/CMakeFiles/fdr.dir/flags.make

libfdr/CMakeFiles/fdr.dir/dllist.c.o: libfdr/CMakeFiles/fdr.dir/flags.make
libfdr/CMakeFiles/fdr.dir/dllist.c.o: ../libfdr/dllist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libfdr/CMakeFiles/fdr.dir/dllist.c.o"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fdr.dir/dllist.c.o   -c /home/boong/Ctest/libfdr/dllist.c

libfdr/CMakeFiles/fdr.dir/dllist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fdr.dir/dllist.c.i"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/libfdr/dllist.c > CMakeFiles/fdr.dir/dllist.c.i

libfdr/CMakeFiles/fdr.dir/dllist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fdr.dir/dllist.c.s"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/libfdr/dllist.c -o CMakeFiles/fdr.dir/dllist.c.s

libfdr/CMakeFiles/fdr.dir/jrb.c.o: libfdr/CMakeFiles/fdr.dir/flags.make
libfdr/CMakeFiles/fdr.dir/jrb.c.o: ../libfdr/jrb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libfdr/CMakeFiles/fdr.dir/jrb.c.o"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fdr.dir/jrb.c.o   -c /home/boong/Ctest/libfdr/jrb.c

libfdr/CMakeFiles/fdr.dir/jrb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fdr.dir/jrb.c.i"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/libfdr/jrb.c > CMakeFiles/fdr.dir/jrb.c.i

libfdr/CMakeFiles/fdr.dir/jrb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fdr.dir/jrb.c.s"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/libfdr/jrb.c -o CMakeFiles/fdr.dir/jrb.c.s

libfdr/CMakeFiles/fdr.dir/jval.c.o: libfdr/CMakeFiles/fdr.dir/flags.make
libfdr/CMakeFiles/fdr.dir/jval.c.o: ../libfdr/jval.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libfdr/CMakeFiles/fdr.dir/jval.c.o"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fdr.dir/jval.c.o   -c /home/boong/Ctest/libfdr/jval.c

libfdr/CMakeFiles/fdr.dir/jval.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fdr.dir/jval.c.i"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/libfdr/jval.c > CMakeFiles/fdr.dir/jval.c.i

libfdr/CMakeFiles/fdr.dir/jval.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fdr.dir/jval.c.s"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/libfdr/jval.c -o CMakeFiles/fdr.dir/jval.c.s

libfdr/CMakeFiles/fdr.dir/fields.c.o: libfdr/CMakeFiles/fdr.dir/flags.make
libfdr/CMakeFiles/fdr.dir/fields.c.o: ../libfdr/fields.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boong/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libfdr/CMakeFiles/fdr.dir/fields.c.o"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fdr.dir/fields.c.o   -c /home/boong/Ctest/libfdr/fields.c

libfdr/CMakeFiles/fdr.dir/fields.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fdr.dir/fields.c.i"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/boong/Ctest/libfdr/fields.c > CMakeFiles/fdr.dir/fields.c.i

libfdr/CMakeFiles/fdr.dir/fields.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fdr.dir/fields.c.s"
	cd /home/boong/Ctest/b/libfdr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/boong/Ctest/libfdr/fields.c -o CMakeFiles/fdr.dir/fields.c.s

# Object files for target fdr
fdr_OBJECTS = \
"CMakeFiles/fdr.dir/dllist.c.o" \
"CMakeFiles/fdr.dir/jrb.c.o" \
"CMakeFiles/fdr.dir/jval.c.o" \
"CMakeFiles/fdr.dir/fields.c.o"

# External object files for target fdr
fdr_EXTERNAL_OBJECTS =

libfdr/libfdr.a: libfdr/CMakeFiles/fdr.dir/dllist.c.o
libfdr/libfdr.a: libfdr/CMakeFiles/fdr.dir/jrb.c.o
libfdr/libfdr.a: libfdr/CMakeFiles/fdr.dir/jval.c.o
libfdr/libfdr.a: libfdr/CMakeFiles/fdr.dir/fields.c.o
libfdr/libfdr.a: libfdr/CMakeFiles/fdr.dir/build.make
libfdr/libfdr.a: libfdr/CMakeFiles/fdr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boong/Ctest/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libfdr.a"
	cd /home/boong/Ctest/b/libfdr && $(CMAKE_COMMAND) -P CMakeFiles/fdr.dir/cmake_clean_target.cmake
	cd /home/boong/Ctest/b/libfdr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fdr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libfdr/CMakeFiles/fdr.dir/build: libfdr/libfdr.a

.PHONY : libfdr/CMakeFiles/fdr.dir/build

libfdr/CMakeFiles/fdr.dir/clean:
	cd /home/boong/Ctest/b/libfdr && $(CMAKE_COMMAND) -P CMakeFiles/fdr.dir/cmake_clean.cmake
.PHONY : libfdr/CMakeFiles/fdr.dir/clean

libfdr/CMakeFiles/fdr.dir/depend:
	cd /home/boong/Ctest/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boong/Ctest /home/boong/Ctest/libfdr /home/boong/Ctest/b /home/boong/Ctest/b/libfdr /home/boong/Ctest/b/libfdr/CMakeFiles/fdr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libfdr/CMakeFiles/fdr.dir/depend

