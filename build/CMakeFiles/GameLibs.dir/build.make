# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alexwaldmann/C++/Game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alexwaldmann/C++/Game/build

# Include any dependencies generated for this target.
include CMakeFiles/GameLibs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GameLibs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GameLibs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GameLibs.dir/flags.make

CMakeFiles/GameLibs.dir/src/main.cpp.o: CMakeFiles/GameLibs.dir/flags.make
CMakeFiles/GameLibs.dir/src/main.cpp.o: /Users/alexwaldmann/C++/Game/src/main.cpp
CMakeFiles/GameLibs.dir/src/main.cpp.o: CMakeFiles/GameLibs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GameLibs.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameLibs.dir/src/main.cpp.o -MF CMakeFiles/GameLibs.dir/src/main.cpp.o.d -o CMakeFiles/GameLibs.dir/src/main.cpp.o -c /Users/alexwaldmann/C++/Game/src/main.cpp

CMakeFiles/GameLibs.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameLibs.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexwaldmann/C++/Game/src/main.cpp > CMakeFiles/GameLibs.dir/src/main.cpp.i

CMakeFiles/GameLibs.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameLibs.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexwaldmann/C++/Game/src/main.cpp -o CMakeFiles/GameLibs.dir/src/main.cpp.s

# Object files for target GameLibs
GameLibs_OBJECTS = \
"CMakeFiles/GameLibs.dir/src/main.cpp.o"

# External object files for target GameLibs
GameLibs_EXTERNAL_OBJECTS =

libGameLibs.a: CMakeFiles/GameLibs.dir/src/main.cpp.o
libGameLibs.a: CMakeFiles/GameLibs.dir/build.make
libGameLibs.a: CMakeFiles/GameLibs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libGameLibs.a"
	$(CMAKE_COMMAND) -P CMakeFiles/GameLibs.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GameLibs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GameLibs.dir/build: libGameLibs.a
.PHONY : CMakeFiles/GameLibs.dir/build

CMakeFiles/GameLibs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GameLibs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GameLibs.dir/clean

CMakeFiles/GameLibs.dir/depend:
	cd /Users/alexwaldmann/C++/Game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexwaldmann/C++/Game /Users/alexwaldmann/C++/Game /Users/alexwaldmann/C++/Game/build /Users/alexwaldmann/C++/Game/build /Users/alexwaldmann/C++/Game/build/CMakeFiles/GameLibs.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/GameLibs.dir/depend

