# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/USER/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/USER/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug

# Include any dependencies generated for this target.
include Google_tests/CMakeFiles/Google_Tests_run.dir/depend.make

# Include the progress variables for this target.
include Google_tests/CMakeFiles/Google_Tests_run.dir/progress.make

# Include the compile flags for this target's objects.
include Google_tests/CMakeFiles/Google_Tests_run.dir/flags.make

Google_tests/CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.o: Google_tests/CMakeFiles/Google_Tests_run.dir/flags.make
Google_tests/CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.o: ../Google_tests/PertSolverTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Google_tests/CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.o"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.o -c /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/Google_tests/PertSolverTest.cpp

Google_tests/CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.i"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/Google_tests/PertSolverTest.cpp > CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.i

Google_tests/CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.s"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/Google_tests/PertSolverTest.cpp -o CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.s

# Object files for target Google_Tests_run
Google_Tests_run_OBJECTS = \
"CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.o"

# External object files for target Google_Tests_run
Google_Tests_run_EXTERNAL_OBJECTS =

Google_tests/Google_Tests_run.exe: Google_tests/CMakeFiles/Google_Tests_run.dir/PertSolverTest.cpp.o
Google_tests/Google_Tests_run.exe: Google_tests/CMakeFiles/Google_Tests_run.dir/build.make
Google_tests/Google_Tests_run.exe: PertSolver_lib/libPertSolver_lib.a
Google_tests/Google_Tests_run.exe: lib/libgtestd.a
Google_tests/Google_Tests_run.exe: lib/libgtest_maind.a
Google_tests/Google_Tests_run.exe: lib/libgtestd.a
Google_tests/Google_Tests_run.exe: Google_tests/CMakeFiles/Google_Tests_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Google_Tests_run.exe"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Google_Tests_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Google_tests/CMakeFiles/Google_Tests_run.dir/build: Google_tests/Google_Tests_run.exe

.PHONY : Google_tests/CMakeFiles/Google_Tests_run.dir/build

Google_tests/CMakeFiles/Google_Tests_run.dir/clean:
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests && $(CMAKE_COMMAND) -P CMakeFiles/Google_Tests_run.dir/cmake_clean.cmake
.PHONY : Google_tests/CMakeFiles/Google_Tests_run.dir/clean

Google_tests/CMakeFiles/Google_Tests_run.dir/depend:
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/Google_tests /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/Google_tests/CMakeFiles/Google_Tests_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Google_tests/CMakeFiles/Google_Tests_run.dir/depend

