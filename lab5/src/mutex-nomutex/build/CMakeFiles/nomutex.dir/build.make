# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build

# Include any dependencies generated for this target.
include CMakeFiles/nomutex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/nomutex.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/nomutex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nomutex.dir/flags.make

CMakeFiles/nomutex.dir/nomutex.c.o: CMakeFiles/nomutex.dir/flags.make
CMakeFiles/nomutex.dir/nomutex.c.o: /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/nomutex.c
CMakeFiles/nomutex.dir/nomutex.c.o: CMakeFiles/nomutex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/nomutex.dir/nomutex.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/nomutex.dir/nomutex.c.o -MF CMakeFiles/nomutex.dir/nomutex.c.o.d -o CMakeFiles/nomutex.dir/nomutex.c.o -c /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/nomutex.c

CMakeFiles/nomutex.dir/nomutex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/nomutex.dir/nomutex.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/nomutex.c > CMakeFiles/nomutex.dir/nomutex.c.i

CMakeFiles/nomutex.dir/nomutex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/nomutex.dir/nomutex.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/nomutex.c -o CMakeFiles/nomutex.dir/nomutex.c.s

# Object files for target nomutex
nomutex_OBJECTS = \
"CMakeFiles/nomutex.dir/nomutex.c.o"

# External object files for target nomutex
nomutex_EXTERNAL_OBJECTS =

nomutex: CMakeFiles/nomutex.dir/nomutex.c.o
nomutex: CMakeFiles/nomutex.dir/build.make
nomutex: CMakeFiles/nomutex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable nomutex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nomutex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nomutex.dir/build: nomutex
.PHONY : CMakeFiles/nomutex.dir/build

CMakeFiles/nomutex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nomutex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nomutex.dir/clean

CMakeFiles/nomutex.dir/depend:
	cd /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build /home/user/Desktop/os_lab_2019/lab5/src/mutex-nomutex/build/CMakeFiles/nomutex.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/nomutex.dir/depend

