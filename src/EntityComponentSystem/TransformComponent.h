#ifndef TransformComponent_h
#define TransformComponent_h
#pragma once

#include "components.h"
#include "vector2d.h"
#include "gameMath.h"

class TransformComponent : public Component
{
public:
    Vector2D position;
    Vector2D velocity;
    const double speed = 0.2;
    const double maxSpeed = 10;
    const double negMaxSpeed = maxSpeed * -1;

    TransformComponent()
    {
        position.x = 0;
        position.y = 0;
    }

    TransformComponent(double x, double y)
    {
        position.x = x;
        position.y = y;
    }

    void init() override
    {
        velocity.x = 0;
        velocity.y = 0;
    }

    void update() override
    {
        std::cout << velocity << std::endl;
        position.x += GameMath::clamp(velocity.x * speed, negMaxSpeed, maxSpeed);
        position.y += GameMath::clamp(velocity.y * speed, negMaxSpeed, maxSpeed);
    }
};

#endif /* PositionComponent_h */