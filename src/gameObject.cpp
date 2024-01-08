#include "gameObject.h"
#include "textureManager.h"

GameObject::GameObject(const char *textureSheet, int xPos, int yPos, int xTileOffset, int yTileOffset)
{
    GameObject::xPos = xPos;
    GameObject::yPos = yPos;
    objTex = TextureManager::LoadTexture(textureSheet);

    GameObject::xSrcPos = xTileOffset * TextureManager::tileWidth;
    GameObject::ySrcPos = yTileOffset * TextureManager::tileWidth;
}

GameObject::~GameObject()
{
}

void GameObject::update()
{
    srcRect.h = TextureManager::tileWidth;
    srcRect.w = TextureManager::tileWidth;
    srcRect.x = xSrcPos;
    srcRect.y = ySrcPos;

    destRect.w = 32;
    destRect.h = 32;
    destRect.x = xPos;
    destRect.y = yPos;
}

void GameObject::render()
{
    SDL_RenderCopy(Game::renderer, objTex, &srcRect, &destRect);
}