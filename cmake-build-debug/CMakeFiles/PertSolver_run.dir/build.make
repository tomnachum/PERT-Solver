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
include CMakeFiles/PertSolver_run.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PertSolver_run.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PertSolver_run.dir/flags.make

CMakeFiles/PertSolver_run.dir/main.cpp.o: CMakeFiles/PertSolver_run.dir/flags.make
CMakeFiles/PertSolver_run.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PertSolver_run.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PertSolver_run.dir/main.cpp.o -c /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/main.cpp

CMakeFiles/PertSolver_run.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PertSolver_run.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/main.cpp > CMakeFiles/PertSolver_run.dir/main.cpp.i

CMakeFiles/PertSolver_run.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PertSolver_run.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/main.cpp -o CMakeFiles/PertSolver_run.dir/main.cpp.s

# Object files for target PertSolver_run
PertSolver_run_OBJECTS = \
"CMakeFiles/PertSolver_run.dir/main.cpp.o"

# External object files for target PertSolver_run
PertSolver_run_EXTERNAL_OBJECTS =

PertSolver_run.exe: CMakeFiles/PertSolver_run.dir/main.cpp.o
PertSolver_run.exe: CMakeFiles/PertSolver_run.dir/build.make
PertSolver_run.exe: PertSolver_lib/libPertSolver_lib.a
PertSolver_run.exe: CMakeFiles/PertSolver_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PertSolver_run.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PertSolver_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PertSolver_run.dir/build: PertSolver_run.exe

.PHONY : CMakeFiles/PertSolver_run.dir/build

CMakeFiles/PertSolver_run.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PertSolver_run.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PertSolver_run.dir/clean

CMakeFiles/PertSolver_run.dir/depend:
	cd /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug /cygdrive/c/Users/USER/Desktop/Tom/My_Projects/PertSolver/cmake-build-debug/CMakeFiles/PertSolver_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PertSolver_run.dir/depend
