# CMake generated Testfile for 
# Source directory: /Users/agilan/Desktop/PlannerAI/Crow
# Build directory: /Users/agilan/Desktop/PlannerAI/Crow/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(crow_test "/Users/agilan/Desktop/PlannerAI/Crow/build/tests/unittest")
set_tests_properties(crow_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/agilan/Desktop/PlannerAI/Crow/CMakeLists.txt;108;add_test;/Users/agilan/Desktop/PlannerAI/Crow/CMakeLists.txt;0;")
subdirs("examples")
subdirs("tests")
