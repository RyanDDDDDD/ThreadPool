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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wuruidong/Documents/ThreadPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wuruidong/Documents/ThreadPool/build

# Include any dependencies generated for this target.
include CMakeFiles/ThreadPool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ThreadPool.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ThreadPool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ThreadPool.dir/flags.make

CMakeFiles/ThreadPool.dir/main.cpp.o: CMakeFiles/ThreadPool.dir/flags.make
CMakeFiles/ThreadPool.dir/main.cpp.o: /Users/wuruidong/Documents/ThreadPool/main.cpp
CMakeFiles/ThreadPool.dir/main.cpp.o: CMakeFiles/ThreadPool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wuruidong/Documents/ThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ThreadPool.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ThreadPool.dir/main.cpp.o -MF CMakeFiles/ThreadPool.dir/main.cpp.o.d -o CMakeFiles/ThreadPool.dir/main.cpp.o -c /Users/wuruidong/Documents/ThreadPool/main.cpp

CMakeFiles/ThreadPool.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ThreadPool.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wuruidong/Documents/ThreadPool/main.cpp > CMakeFiles/ThreadPool.dir/main.cpp.i

CMakeFiles/ThreadPool.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ThreadPool.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wuruidong/Documents/ThreadPool/main.cpp -o CMakeFiles/ThreadPool.dir/main.cpp.s

CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o: CMakeFiles/ThreadPool.dir/flags.make
CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o: /Users/wuruidong/Documents/ThreadPool/ThreadPool.cpp
CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o: CMakeFiles/ThreadPool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/wuruidong/Documents/ThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o -MF CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o.d -o CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o -c /Users/wuruidong/Documents/ThreadPool/ThreadPool.cpp

CMakeFiles/ThreadPool.dir/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ThreadPool.dir/ThreadPool.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wuruidong/Documents/ThreadPool/ThreadPool.cpp > CMakeFiles/ThreadPool.dir/ThreadPool.cpp.i

CMakeFiles/ThreadPool.dir/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ThreadPool.dir/ThreadPool.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wuruidong/Documents/ThreadPool/ThreadPool.cpp -o CMakeFiles/ThreadPool.dir/ThreadPool.cpp.s

# Object files for target ThreadPool
ThreadPool_OBJECTS = \
"CMakeFiles/ThreadPool.dir/main.cpp.o" \
"CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o"

# External object files for target ThreadPool
ThreadPool_EXTERNAL_OBJECTS =

ThreadPool: CMakeFiles/ThreadPool.dir/main.cpp.o
ThreadPool: CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o
ThreadPool: CMakeFiles/ThreadPool.dir/build.make
ThreadPool: CMakeFiles/ThreadPool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/wuruidong/Documents/ThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ThreadPool"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThreadPool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ThreadPool.dir/build: ThreadPool
.PHONY : CMakeFiles/ThreadPool.dir/build

CMakeFiles/ThreadPool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ThreadPool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ThreadPool.dir/clean

CMakeFiles/ThreadPool.dir/depend:
	cd /Users/wuruidong/Documents/ThreadPool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wuruidong/Documents/ThreadPool /Users/wuruidong/Documents/ThreadPool /Users/wuruidong/Documents/ThreadPool/build /Users/wuruidong/Documents/ThreadPool/build /Users/wuruidong/Documents/ThreadPool/build/CMakeFiles/ThreadPool.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ThreadPool.dir/depend

