#ifndef KeyboardControls_h
#define KeyboardControls_h
#pragma once
#include "components.h"
#include "game.h"
#include "SDL.h"

class KeyboardController : public Component
{
private:
    const Uint8 *keyboardState;
    int heldKeysLength;

public:
    TransformComponent *transform;

    void init() override
    {
        transform = &entity->getComponent<TransformComponent>();
    }

    void update() override
    {
        keyboardState = SDL_GetKeyboardState(&heldKeysLength);

        // Handle Y position changes
        if (keyboardState[SDL_SCANCODE_W])
        {
            transform->velocity.y -= 1;
            if (transform->velocity.y > 0)
                transform->velocity.y = 0;
        }
        if (keyboardState[SDL_SCANCODE_S])
        {
            transform->velocity.y += 1;
            if (transform->velocity.y < 0)
                transform->velocity.y = 0;
        }
        // If neither key is being held down, reset y velocity
        if ((!keyboardState[SDL_SCANCODE_S] && !keyboardState[SDL_SCANCODE_W]) || (keyboardState[SDL_SCANCODE_S] && keyboardState[SDL_SCANCODE_W]))
        {
            transform->velocity.y = 0;
        }

        // Handle X position changes
        if (keyboardState[SDL_SCANCODE_A])
        {
            transform->velocity.x -= 1;
            if (transform->velocity.x > 0)
                transform->velocity.x = 0;
        }
        if (keyboardState[SDL_SCANCODE_D])
        {
            transform->velocity.x += 1;
            if (transform->velocity.x < 0)
                transform->velocity.x = 0;
        }
        // If neither key is being held down, reset x velocity
        if ((!keyboardState[SDL_SCANCODE_D] && !keyboardState[SDL_SCANCODE_A]) || (keyboardState[SDL_SCANCODE_D] && keyboardState[SDL_SCANCODE_A]))
        {
            transform->velocity.x = 0;
        }

        if (keyboardState[SDL_SCANCODE_SPACE])
        {
            std::cout << "SPACE is held" << std::endl;
        }
    }
};

#endif /* KeyboardControls_h */