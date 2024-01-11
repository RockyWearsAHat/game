#ifndef vector2d_h
#define vector2d_h
#pragma once
#include <iostream>

class Vector2D
{
public:
    float x;
    float y;

    Vector2D();
    Vector2D(float x, float y);

    Vector2D &add(const Vector2D &vecToAdd);
    Vector2D &subtract(const Vector2D &vecToSubtract);
    Vector2D &multiply(const Vector2D &vecToMultiplyBy);
    Vector2D &divide(const Vector2D &vecToDivideBy);

    friend Vector2D &operator+(Vector2D &vec1, Vector2D &vec2);
    friend Vector2D &operator-(Vector2D &vec1, Vector2D &vec2);
    friend Vector2D &operator*(Vector2D &vec1, Vector2D &vec2);
    friend Vector2D &operator/(Vector2D &vec1, Vector2D &vec2);

    Vector2D &operator+=(const Vector2D &vecToAdd);
    Vector2D &operator-=(const Vector2D &vecToSubtract);
    Vector2D &operator*=(const Vector2D &vecToMultiplyBy);
    Vector2D &operator/=(const Vector2D &vecToDivideBy);

    friend std::ostream &operator<<(std::ostream &stream, const Vector2D &vec);
};

#endif /* vector2d_h */