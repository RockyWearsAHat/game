#include <iostream>
#include "SDL.h"
#include "game.h"

Game *game = nullptr;

int main(int argc, char *argv[])
{
    const int targetFPS = 144;
    const float frameDelay = 1000.0 / (float)targetFPS;

    Uint32 frameStart;
    int frameTime;

    game = new Game();

    game->init("Game", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 640, 448, false);

    while (game->running())
    {
        frameStart = SDL_GetTicks64();

        game->handleEvents();
        game->update();
        game->render();

        frameTime = SDL_GetTicks64() - frameStart;

        if (frameDelay > frameTime)
        {
            SDL_Delay(frameDelay - frameTime);
        }
    }

    game->clean();

    return 0;
}