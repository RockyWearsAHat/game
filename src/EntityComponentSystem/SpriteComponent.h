#ifndef SpriteComponent_h
#define SpriteComponent_h
#pragma once
#include "components.h"
#include "SDL.h"
#include "textureManager.h"

class SpriteComponent : public Component
{
private:
    TransformComponent *position;
    SDL_Texture *texture;
    SDL_Rect srcRect, destRect;

public:
    SpriteComponent() = default;
    SpriteComponent(const char *path)
    {
        texture = TextureManager::LoadTexture(path);
    }

    void init() override
    {
        position = &entity->getComponent<TransformComponent>();

        srcRect.x = 48;
        srcRect.y = 0;
        srcRect.w = srcRect.h = 8;

        destRect.w = destRect.h = 32;
    }

    void update() override
    {
        destRect.x = (int)position->position.x;
        destRect.y = (int)position->position.y;
    }

    void draw() override
    {
        TextureManager::Draw(texture, srcRect, destRect);
    }
};

#endif /* SpriteComponent_h */