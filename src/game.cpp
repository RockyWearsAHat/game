#include <iostream>
#include "game.h"
#include "textureManager.h"
#include "gameObject.h"

GameObject *player;

SDL_Renderer *Game::renderer = nullptr;

Game::Game()
{
}

Game::~Game()
{
}

void Game::init(const char *title = "title", int xPos = SDL_WINDOWPOS_CENTERED, int yPos = SDL_WINDOWPOS_CENTERED, int width = 600, int height = 400, bool fullscreen = false)
{
    int flags = 0;

    if (fullscreen)
        flags = SDL_WINDOW_FULLSCREEN;

    if (SDL_Init(SDL_INIT_EVERYTHING) == 0)
    {
        std::cout << "Initialized SDL" << std::endl;

        window = SDL_CreateWindow(title, xPos, yPos, width, height, flags);

        if (window)
        {
        }

        Game::renderer = SDL_CreateRenderer(window, -1, 0);

        if (renderer)
        {
            SDL_SetRenderDrawColor(Game::renderer, 255, 255, 255, 255);
            std::cout << "Successfully created renderer" << std::endl;
        }
        isRunning = true;

        player = new GameObject("assets/sprites.png", 0, 0, 4, 0);
    }
    else
    {
        isRunning = false;
    }
}

void Game::handleEvents()
{
    SDL_Event event;

    SDL_PollEvent(&event);

    switch (event.type)
    {
    case SDL_QUIT:
        isRunning = false;
        break;
    }

    // Get all keyboard events;
    keyboardState = SDL_GetKeyboardState(&heldKeysLength);

    if (keyboardState[SDL_SCANCODE_W])
    {
        std::cout << "W is held" << std::endl;
        player->setYPos(-1);
    }
    if (keyboardState[SDL_SCANCODE_A])
    {
        std::cout << "A is held" << std::endl;
        player->setXPos(-1);
    }
    if (keyboardState[SDL_SCANCODE_S])
    {
        std::cout << "S is held" << std::endl;
        player->setYPos(1);
    }
    if (keyboardState[SDL_SCANCODE_D])
    {
        std::cout << "D is held" << std::endl;
        player->setXPos(1);
    }
    if (keyboardState[SDL_SCANCODE_SPACE])
    {
        std::cout << "SPACE is held" << std::endl;
    }
}

void Game::update()
{
    player->update();
}

void Game::render()
{
    SDL_RenderClear(Game::renderer);
    player->render();
    SDL_RenderPresent(Game::renderer);
}

void Game::clean()
{
    SDL_DestroyWindow(window);
    SDL_DestroyRenderer(Game::renderer);
    SDL_Quit();

    std::cout << "Cleared Memory And Quit SDL" << std::endl;
}