#ifndef gameObject_h
#define gameObject_h
#include "game.h"
#pragma once

class GameObject
{
public:
    GameObject(const char *textureSheet, int xPos, int yPos, int xTileOffset, int yTileOffset);
    ~GameObject();

    void update();
    void render();

    inline void setXPos(int changeAmt) { xPos += changeAmt; }
    inline void setYPos(int changeAmt) { yPos += changeAmt; }

private:
    int xPos;
    int yPos;

    int xSrcPos;
    int ySrcPos;

    SDL_Texture *objTex;
    SDL_Rect srcRect, destRect;
};

#endif /* gameObject_h */