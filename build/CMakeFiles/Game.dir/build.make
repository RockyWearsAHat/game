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
include CMakeFiles/Game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Game.dir/flags.make

CMakeFiles/Game.dir/src/main.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/main.cpp.o: /Users/alexwaldmann/C++/Game/src/main.cpp
CMakeFiles/Game.dir/src/main.cpp.o: CMakeFiles/Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Game.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Game.dir/src/main.cpp.o -MF CMakeFiles/Game.dir/src/main.cpp.o.d -o CMakeFiles/Game.dir/src/main.cpp.o -c /Users/alexwaldmann/C++/Game/src/main.cpp

CMakeFiles/Game.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexwaldmann/C++/Game/src/main.cpp > CMakeFiles/Game.dir/src/main.cpp.i

CMakeFiles/Game.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexwaldmann/C++/Game/src/main.cpp -o CMakeFiles/Game.dir/src/main.cpp.s

CMakeFiles/Game.dir/src/game.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/game.cpp.o: /Users/alexwaldmann/C++/Game/src/game.cpp
CMakeFiles/Game.dir/src/game.cpp.o: CMakeFiles/Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Game.dir/src/game.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Game.dir/src/game.cpp.o -MF CMakeFiles/Game.dir/src/game.cpp.o.d -o CMakeFiles/Game.dir/src/game.cpp.o -c /Users/alexwaldmann/C++/Game/src/game.cpp

CMakeFiles/Game.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/game.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexwaldmann/C++/Game/src/game.cpp > CMakeFiles/Game.dir/src/game.cpp.i

CMakeFiles/Game.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/game.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexwaldmann/C++/Game/src/game.cpp -o CMakeFiles/Game.dir/src/game.cpp.s

CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o: /Users/alexwaldmann/C++/Game/src/GameLib/vector2d.cpp
CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o: CMakeFiles/Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o -MF CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o.d -o CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o -c /Users/alexwaldmann/C++/Game/src/GameLib/vector2d.cpp

CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexwaldmann/C++/Game/src/GameLib/vector2d.cpp > CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.i

CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexwaldmann/C++/Game/src/GameLib/vector2d.cpp -o CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.s

CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o: /Users/alexwaldmann/C++/Game/src/TextureSystem/textureManager.cpp
CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o: CMakeFiles/Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o -MF CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o.d -o CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o -c /Users/alexwaldmann/C++/Game/src/TextureSystem/textureManager.cpp

CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexwaldmann/C++/Game/src/TextureSystem/textureManager.cpp > CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.i

CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexwaldmann/C++/Game/src/TextureSystem/textureManager.cpp -o CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.s

# Object files for target Game
Game_OBJECTS = \
"CMakeFiles/Game.dir/src/main.cpp.o" \
"CMakeFiles/Game.dir/src/game.cpp.o" \
"CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o" \
"CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o"

# External object files for target Game
Game_EXTERNAL_OBJECTS =

Game: CMakeFiles/Game.dir/src/main.cpp.o
Game: CMakeFiles/Game.dir/src/game.cpp.o
Game: CMakeFiles/Game.dir/src/GameLib/vector2d.cpp.o
Game: CMakeFiles/Game.dir/src/TextureSystem/textureManager.cpp.o
Game: CMakeFiles/Game.dir/build.make
Game: /Users/alexwaldmann/C++/Game/lib/SDL2/libSDL2.dylib
Game: /Users/alexwaldmann/C++/Game/lib/SDL2_image/libSDL2_image.dylib
Game: CMakeFiles/Game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alexwaldmann/C++/Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Game.dir/build: Game
.PHONY : CMakeFiles/Game.dir/build

CMakeFiles/Game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Game.dir/clean

CMakeFiles/Game.dir/depend:
	cd /Users/alexwaldmann/C++/Game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexwaldmann/C++/Game /Users/alexwaldmann/C++/Game /Users/alexwaldmann/C++/Game/build /Users/alexwaldmann/C++/Game/build /Users/alexwaldmann/C++/Game/build/CMakeFiles/Game.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Game.dir/depend

