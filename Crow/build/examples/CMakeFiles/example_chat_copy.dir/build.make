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

# Utility rule file for example_chat_copy.

# Include any custom commands dependencies for this target.
include examples/CMakeFiles/example_chat_copy.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/example_chat_copy.dir/progress.make

examples/CMakeFiles/example_chat_copy: /Users/agilan/Desktop/PlannerAI/Crow/examples/example_chat.html

examples/example_chat.html: /Users/agilan/Desktop/PlannerAI/Crow/examples/example_chat.html
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating example_chat.html"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && /usr/local/Cellar/cmake/3.27.4/bin/cmake -E copy /Users/agilan/Desktop/PlannerAI/Crow/examples/example_chat.html /Users/agilan/Desktop/PlannerAI/Crow/build/examples/templates/example_chat.html

example_chat_copy: examples/CMakeFiles/example_chat_copy
example_chat_copy: examples/example_chat.html
example_chat_copy: examples/CMakeFiles/example_chat_copy.dir/build.make
.PHONY : example_chat_copy

# Rule to build all files generated by this target.
examples/CMakeFiles/example_chat_copy.dir/build: example_chat_copy
.PHONY : examples/CMakeFiles/example_chat_copy.dir/build

examples/CMakeFiles/example_chat_copy.dir/clean:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/example_chat_copy.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/example_chat_copy.dir/clean

examples/CMakeFiles/example_chat_copy.dir/depend:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/agilan/Desktop/PlannerAI/Crow /Users/agilan/Desktop/PlannerAI/Crow/examples /Users/agilan/Desktop/PlannerAI/Crow/build /Users/agilan/Desktop/PlannerAI/Crow/build/examples /Users/agilan/Desktop/PlannerAI/Crow/build/examples/CMakeFiles/example_chat_copy.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/example_chat_copy.dir/depend

