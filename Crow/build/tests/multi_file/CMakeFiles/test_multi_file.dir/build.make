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
include tests/multi_file/CMakeFiles/test_multi_file.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/multi_file/CMakeFiles/test_multi_file.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/multi_file/CMakeFiles/test_multi_file.dir/progress.make

# Include the compile flags for this target's objects.
include tests/multi_file/CMakeFiles/test_multi_file.dir/flags.make

tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.o: tests/multi_file/CMakeFiles/test_multi_file.dir/flags.make
tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.o: /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/main.cpp
tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.o: tests/multi_file/CMakeFiles/test_multi_file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.o"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.o -MF CMakeFiles/test_multi_file.dir/main.cpp.o.d -o CMakeFiles/test_multi_file.dir/main.cpp.o -c /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/main.cpp

tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_multi_file.dir/main.cpp.i"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/main.cpp > CMakeFiles/test_multi_file.dir/main.cpp.i

tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_multi_file.dir/main.cpp.s"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/main.cpp -o CMakeFiles/test_multi_file.dir/main.cpp.s

tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.o: tests/multi_file/CMakeFiles/test_multi_file.dir/flags.make
tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.o: /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/secondary.cpp
tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.o: tests/multi_file/CMakeFiles/test_multi_file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.o"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.o -MF CMakeFiles/test_multi_file.dir/secondary.cpp.o.d -o CMakeFiles/test_multi_file.dir/secondary.cpp.o -c /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/secondary.cpp

tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_multi_file.dir/secondary.cpp.i"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/secondary.cpp > CMakeFiles/test_multi_file.dir/secondary.cpp.i

tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_multi_file.dir/secondary.cpp.s"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file/secondary.cpp -o CMakeFiles/test_multi_file.dir/secondary.cpp.s

# Object files for target test_multi_file
test_multi_file_OBJECTS = \
"CMakeFiles/test_multi_file.dir/main.cpp.o" \
"CMakeFiles/test_multi_file.dir/secondary.cpp.o"

# External object files for target test_multi_file
test_multi_file_EXTERNAL_OBJECTS =

tests/multi_file/test_multi_file: tests/multi_file/CMakeFiles/test_multi_file.dir/main.cpp.o
tests/multi_file/test_multi_file: tests/multi_file/CMakeFiles/test_multi_file.dir/secondary.cpp.o
tests/multi_file/test_multi_file: tests/multi_file/CMakeFiles/test_multi_file.dir/build.make
tests/multi_file/test_multi_file: tests/multi_file/CMakeFiles/test_multi_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/agilan/Desktop/PlannerAI/Crow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_multi_file"
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_multi_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/multi_file/CMakeFiles/test_multi_file.dir/build: tests/multi_file/test_multi_file
.PHONY : tests/multi_file/CMakeFiles/test_multi_file.dir/build

tests/multi_file/CMakeFiles/test_multi_file.dir/clean:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file && $(CMAKE_COMMAND) -P CMakeFiles/test_multi_file.dir/cmake_clean.cmake
.PHONY : tests/multi_file/CMakeFiles/test_multi_file.dir/clean

tests/multi_file/CMakeFiles/test_multi_file.dir/depend:
	cd /Users/agilan/Desktop/PlannerAI/Crow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/agilan/Desktop/PlannerAI/Crow /Users/agilan/Desktop/PlannerAI/Crow/tests/multi_file /Users/agilan/Desktop/PlannerAI/Crow/build /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file /Users/agilan/Desktop/PlannerAI/Crow/build/tests/multi_file/CMakeFiles/test_multi_file.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/multi_file/CMakeFiles/test_multi_file.dir/depend

