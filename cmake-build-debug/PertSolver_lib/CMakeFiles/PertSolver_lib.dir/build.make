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
include PertSolver_lib/CMakeFiles/PertSolver_lib.dir/depend.make

# Include the progress variables for this target.
include PertSolver_lib/CMakeFiles/PertSolver_lib.dir/progress.make

# Include the compile flags for this target's objects.
include PertSolver_lib/CMakeFiles/PertSolver_lib.dir/flags.make

PertSolver_lib/CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.o: PertSolver_lib/CMakeFiles/PertSolver_lib.dir/flags.make
PertSolver_lib/CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.o: ../PertSolver_lib/PertProblem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object PertSolver_lib/CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.o"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib && /usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.o -c /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/PertSolver_lib/PertProblem.cpp

PertSolver_lib/CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.i"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/PertSolver_lib/PertProblem.cpp > CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.i

PertSolver_lib/CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.s"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib && /usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/PertSolver_lib/PertProblem.cpp -o CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.s

# Object files for target PertSolver_lib
PertSolver_lib_OBJECTS = \
"CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.o"

# External object files for target PertSolver_lib
PertSolver_lib_EXTERNAL_OBJECTS =

PertSolver_lib/libPertSolver_lib.a: PertSolver_lib/CMakeFiles/PertSolver_lib.dir/PertProblem.cpp.o
PertSolver_lib/libPertSolver_lib.a: PertSolver_lib/CMakeFiles/PertSolver_lib.dir/build.make
PertSolver_lib/libPertSolver_lib.a: PertSolver_lib/CMakeFiles/PertSolver_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libPertSolver_lib.a"
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib && $(CMAKE_COMMAND) -P CMakeFiles/PertSolver_lib.dir/cmake_clean_target.cmake
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PertSolver_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
PertSolver_lib/CMakeFiles/PertSolver_lib.dir/build: PertSolver_lib/libPertSolver_lib.a

.PHONY : PertSolver_lib/CMakeFiles/PertSolver_lib.dir/build

PertSolver_lib/CMakeFiles/PertSolver_lib.dir/clean:
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib && $(CMAKE_COMMAND) -P CMakeFiles/PertSolver_lib.dir/cmake_clean.cmake
.PHONY : PertSolver_lib/CMakeFiles/PertSolver_lib.dir/clean

PertSolver_lib/CMakeFiles/PertSolver_lib.dir/depend:
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/PertSolver_lib /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/PertSolver_lib/CMakeFiles/PertSolver_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PertSolver_lib/CMakeFiles/PertSolver_lib.dir/depend
