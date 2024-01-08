SRC_DIR = src
BUILD_DIR = build/debug
CC = g++
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
ASSETS_DIR = assets/
OBJ_NAME = Build
INCLUDE_PATHS = -I include/SDL2/ -I include/SDL2_image/
LIBRARY_PATHS = -L lib/SDL2/ -L lib/SDL2_image/
COMPILER_FLAGS = -std=c++20 -Wall -O0 -g
LINKER_FLAGS = -lSDL2 -lSDL2_image

all:
	$(CC) $(COMPILER_FLAGS) $(LINKER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(SRC_FILES) -o $(BUILD_DIR)/$(OBJ_NAME)