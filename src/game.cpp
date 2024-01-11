#include <iostream>
#include "game.h"
#include "textureManager.h"
#include "components.h"
#include "vector2d.h"

SDL_Renderer *Game::renderer = nullptr;

Manager manager;
auto &player(manager.addEntity());

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

        player.addComponent<TransformComponent>(100, 100);
        player.addComponent<SpriteComponent>("assets/sprites.png");
        player.addComponent<KeyboardController>();
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
}

void Game::update()
{
    manager.refresh();
    manager.update();
}

void Game::render()
{
    SDL_RenderClear(Game::renderer);
    manager.draw();
    SDL_RenderPresent(Game::renderer);
}

void Game::clean()
{
    SDL_DestroyWindow(window);
    SDL_DestroyRenderer(Game::renderer);
    SDL_Quit();

    std::cout << "Cleared Memory And Quit SDL" << std::endl;
}