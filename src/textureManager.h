#ifndef textureManager_h
#define textureManager_h
#pragma once
#include "game.h"
#include <map>

class TextureManager
{
public:
    static const int tileWidth = 16;
    static SDL_Texture *LoadTexture(const char *fileName);
};

#endif /* textureManager_h */