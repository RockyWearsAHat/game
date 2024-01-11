#include "textureManager.h"

SDL_Texture *TextureManager::LoadTexture(const char *fileName)
{
    SDL_Surface *tempSurface = IMG_Load(fileName);

    SDL_Texture *tex = SDL_CreateTextureFromSurface(Game::renderer, tempSurface);

    SDL_FreeSurface(tempSurface);

    return tex;
}

void TextureManager::Draw(SDL_Texture *texture, SDL_Rect srcRect, SDL_Rect destRect)
{
    SDL_RenderCopy(Game::renderer, texture, &srcRect, &destRect);
}