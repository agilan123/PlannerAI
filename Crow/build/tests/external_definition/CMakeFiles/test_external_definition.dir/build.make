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
include tests/external_definition/CMakeFiles/test_external_definition.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/external_definition/CMakeFiles/test_external_definition.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/external_definition/CMakeFiles/test_external_definition.dir/progress.make

# Include the compile flags for this target's objects.
include tests/external_definition/CMakeFiles/test_external_definition.dir/flags.make

tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.o: tests/external_definition/CMakeFiles/test_external_definition.dir/flags.make
tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.o: /Users/agilan/Desktop/PlannerAI/Crow/tests/external_definition/main.cpp
tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.o: tests/external_definition/CMakeFiles/test_external_definition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.o"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.o -MF CMakeFiles/test_external_definition.dir/main.cpp.o.d -o CMakeFiles/test_external_definition.dir/main.cpp.o -c /Users/agilan/Desktop/PlannerAI/Crow/tests/external_definition/main.cpp

tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_external_definition.dir/main.cpp.i"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/agilan/Desktop/PlannerAI/Crow/tests/external_definition/main.cpp > CMakeFiles/test_external_definition.dir/main.cpp.i

tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_external_definition.dir/main.cpp.s"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/agilan/Desktop/PlannerAI/Crow/tests/external_definition/main.cpp -o CMakeFiles/test_external_definition.dir/main.cpp.s

# Object files for target test_external_definition
test_external_definition_OBJECTS = \
"CMakeFiles/test_external_definition.dir/main.cpp.o"

# External object files for target test_external_definition
test_external_definition_EXTERNAL_OBJECTS =

tests/external_definition/test_external_definition: tests/external_definition/CMakeFiles/test_external_definition.dir/main.cpp.o
tests/external_definition/test_external_definition: tests/external_definition/CMakeFiles/test_external_definition.dir/build.make
tests/external_definition/test_external_definition: tests/external_definition/CMakeFiles/test_external_definition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_external_definition"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_external_definition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/external_definition/CMakeFiles/test_external_definition.dir/build: tests/external_definition/test_external_definition
.PHONY : tests/external_definition/CMakeFiles/test_external_definition.dir/build

tests/external_definition/CMakeFiles/test_external_definition.dir/clean:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition && $(CMAKE_COMMAND) -P CMakeFiles/test_external_definition.dir/cmake_clean.cmake
.PHONY : tests/external_definition/CMakeFiles/test_external_definition.dir/clean

tests/external_definition/CMakeFiles/test_external_definition.dir/depend:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/agilan/Desktop/PlannerAI/Crow /Users/agilan/Desktop/PlannerAI/Crow/tests/external_definition /Users/agilan/Desktop/PlannerAI/Crow/build /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition /Users/agilan/Desktop/PlannerAI/Crow/build/tests/external_definition/CMakeFiles/test_external_definition.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/external_definition/CMakeFiles/test_external_definition.dir/depend

