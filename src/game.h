#ifndef game_h
#define game_h
#pragma once
#include <iostream>
#include "SDL.h"
#include "SDL_image.h"

class Game
{
public:
    Game();
    ~Game();

    void init(const char *title, int xPos, int yPos, int width, int height, bool fullscreen);

    void handleEvents();
    void update();
    void render();
    void clean();

    bool running() { return isRunning; }

    static SDL_Renderer *renderer;

private:
    bool isRunning = false;
    SDL_Window *window;
};

#endif /* game_h */