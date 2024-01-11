#include "vector2d.h"

Vector2D::Vector2D()
{
    x = 0;
    y = 0;
}

Vector2D::Vector2D(float x, float y)
{
    this->x = x;
    this->y = y;
}

Vector2D &Vector2D::add(const Vector2D &vecToAdd)
{
    this->x += vecToAdd.x;
    this->y += vecToAdd.y;

    return *this;
}

Vector2D &Vector2D::subtract(const Vector2D &vecToSubtract)
{
    this->x -= vecToSubtract.x;
    this->y -= vecToSubtract.y;

    return *this;
}

Vector2D &Vector2D::multiply(const Vector2D &vecToMultiplyBy)
{
    this->x *= vecToMultiplyBy.x;
    this->y *= vecToMultiplyBy.y;

    return *this;
}

Vector2D &Vector2D::divide(const Vector2D &vecToDivideBy)
{
    this->x /= vecToDivideBy.x;
    this->y /= vecToDivideBy.y;

    return *this;
}

Vector2D &operator+(Vector2D &vec1, Vector2D &vec2)
{
    return vec1.add(vec2);
}

Vector2D &operator-(Vector2D &vec1, Vector2D &vec2)
{
    return vec1.subtract(vec2);
}

Vector2D &operator*(Vector2D &vec1, Vector2D &vec2)
{
    return vec1.multiply(vec2);
}

Vector2D &operator/(Vector2D &vec1, Vector2D &vec2)
{
    return vec1.divide(vec2);
}

Vector2D &Vector2D::operator+=(const Vector2D &vecToAdd)
{
    return this->add(vecToAdd);
}

Vector2D &Vector2D::operator-=(const Vector2D &vecToSubtract)
{
    return this->subtract(vecToSubtract);
}

Vector2D &Vector2D::operator*=(const Vector2D &vecToMultiplyBy)
{
    return this->multiply(vecToMultiplyBy);
}

Vector2D &Vector2D::operator/=(const Vector2D &vecToDivideBy)
{
    return this->divide(vecToDivideBy);
}

std::ostream &operator<<(std::ostream &stream, const Vector2D &vec)
{
    stream << "(" << vec.x << ", " << vec.y << ")";
    return stream;
}