# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/agilan/Desktop/PlannerAI/Crow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/agilan/Desktop/PlannerAI/Crow/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/helloworld.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/helloworld.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/helloworld.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/helloworld.dir/flags.make

examples/CMakeFiles/helloworld.dir/helloworld.cpp.o: examples/CMakeFiles/helloworld.dir/flags.make
examples/CMakeFiles/helloworld.dir/helloworld.cpp.o: /Users/agilan/Desktop/PlannerAI/Crow/examples/helloworld.cpp
examples/CMakeFiles/helloworld.dir/helloworld.cpp.o: examples/CMakeFiles/helloworld.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/helloworld.dir/helloworld.cpp.o"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/helloworld.dir/helloworld.cpp.o -MF CMakeFiles/helloworld.dir/helloworld.cpp.o.d -o CMakeFiles/helloworld.dir/helloworld.cpp.o -c /Users/agilan/Desktop/PlannerAI/Crow/examples/helloworld.cpp

examples/CMakeFiles/helloworld.dir/helloworld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/helloworld.dir/helloworld.cpp.i"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/agilan/Desktop/PlannerAI/Crow/examples/helloworld.cpp > CMakeFiles/helloworld.dir/helloworld.cpp.i

examples/CMakeFiles/helloworld.dir/helloworld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/helloworld.dir/helloworld.cpp.s"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/agilan/Desktop/PlannerAI/Crow/examples/helloworld.cpp -o CMakeFiles/helloworld.dir/helloworld.cpp.s

# Object files for target helloworld
helloworld_OBJECTS = \
"CMakeFiles/helloworld.dir/helloworld.cpp.o"

# External object files for target helloworld
helloworld_EXTERNAL_OBJECTS =

examples/helloworld: examples/CMakeFiles/helloworld.dir/helloworld.cpp.o
examples/helloworld: examples/CMakeFiles/helloworld.dir/build.make
examples/helloworld: examples/CMakeFiles/helloworld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable helloworld"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/helloworld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/helloworld.dir/build: examples/helloworld
.PHONY : examples/CMakeFiles/helloworld.dir/build

examples/CMakeFiles/helloworld.dir/clean:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/helloworld.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/helloworld.dir/clean

examples/CMakeFiles/helloworld.dir/depend:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/agilan/Desktop/PlannerAI/Crow /Users/agilan/Desktop/PlannerAI/Crow/examples /Users/agilan/Desktop/PlannerAI/Crow/build /Users/agilan/Desktop/PlannerAI/Crow/build/examples /Users/agilan/Desktop/PlannerAI/Crow/build/examples/CMakeFiles/helloworld.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/helloworld.dir/depend

