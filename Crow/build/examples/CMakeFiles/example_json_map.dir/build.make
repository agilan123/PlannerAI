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
include examples/CMakeFiles/example_json_map.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/example_json_map.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/example_json_map.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/example_json_map.dir/flags.make

examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.o: examples/CMakeFiles/example_json_map.dir/flags.make
examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.o: /Users/agilan/Desktop/PlannerAI/Crow/examples/example_json_map.cpp
examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.o: examples/CMakeFiles/example_json_map.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.o"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.o -MF CMakeFiles/example_json_map.dir/example_json_map.cpp.o.d -o CMakeFiles/example_json_map.dir/example_json_map.cpp.o -c /Users/agilan/Desktop/PlannerAI/Crow/examples/example_json_map.cpp

examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_json_map.dir/example_json_map.cpp.i"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/agilan/Desktop/PlannerAI/Crow/examples/example_json_map.cpp > CMakeFiles/example_json_map.dir/example_json_map.cpp.i

examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_json_map.dir/example_json_map.cpp.s"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/agilan/Desktop/PlannerAI/Crow/examples/example_json_map.cpp -o CMakeFiles/example_json_map.dir/example_json_map.cpp.s

# Object files for target example_json_map
example_json_map_OBJECTS = \
"CMakeFiles/example_json_map.dir/example_json_map.cpp.o"

# External object files for target example_json_map
example_json_map_EXTERNAL_OBJECTS =

examples/example_json_map: examples/CMakeFiles/example_json_map.dir/example_json_map.cpp.o
examples/example_json_map: examples/CMakeFiles/example_json_map.dir/build.make
examples/example_json_map: examples/CMakeFiles/example_json_map.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_json_map"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_json_map.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/example_json_map.dir/build: examples/example_json_map
.PHONY : examples/CMakeFiles/example_json_map.dir/build

examples/CMakeFiles/example_json_map.dir/clean:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/example_json_map.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/example_json_map.dir/clean

examples/CMakeFiles/example_json_map.dir/depend:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/agilan/Desktop/PlannerAI/Crow /Users/agilan/Desktop/PlannerAI/Crow/examples /Users/agilan/Desktop/PlannerAI/Crow/build /Users/agilan/Desktop/PlannerAI/Crow/build/examples /Users/agilan/Desktop/PlannerAI/Crow/build/examples/CMakeFiles/example_json_map.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/example_json_map.dir/depend
