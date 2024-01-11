#ifndef GameMath_h
#define GameMath_h
#pragma once
#include <algorithm>

class GameMath
{
public:
    static const float clamp(float n, float lower, float upper)
    {
        return std::max(lower, std::min(n, upper));
    }
};

#endif /* GameMath_h */