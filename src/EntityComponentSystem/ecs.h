#ifndef ecs_h
#define ecs_h
#pragma once
#include <iostream>
#include <vector>
#include <memory>
#include <algorithm>
#include <bitset>
#include <array>

class Component;
class Entity;

using ComponentID = std::size_t;

inline ComponentID getComponentID()
{
    // Create a static size_t = 0 so this function will generatively generate new ids
    static ComponentID lastID = 0;
    // Return last id then increment, first id = 0, second id = 1;
    return lastID++;
}

template <typename T>
inline ComponentID getComponentTypeID()
{
    static ComponentID typeID = getComponentID();
    return typeID;
}

constexpr std::size_t maxComponents = 16;

using ComponentBitset = std::bitset<maxComponents>;

using ComponentArray = std::array<Component *, maxComponents>;

class Component
{
public:
    Entity *entity;

    virtual void init(){};
    virtual void update(){};
    virtual void draw(){};

    virtual ~Component(){};
};

class Entity
{
private:
    bool active = true;
    std::vector<std::unique_ptr<Component>> components;

    ComponentArray componentArray;
    ComponentBitset componentBitset;

public:
    void update()
    {
        for (auto &component : components)
            component->update();
    }

    void draw()
    {
        for (auto &component : components)
            component->draw();
    }

    bool isActive() const { return active; }

    void destroy() { active = false; }

    template <typename T>
    bool hasComponent() const
    {
        return componentBitset[getComponentTypeID<T>];
    }

    template <typename T, typename... TArgs>
    T &addComponent(TArgs &&...args)
    {
        T *component(new T(std::forward<TArgs>(args)...));

        component->entity = this;
        std::unique_ptr<Component> uPtr{component};
        components.emplace_back(std::move(uPtr));

        componentArray[getComponentTypeID<T>()] = component;
        componentBitset[getComponentTypeID<T>()] = true;

        component->init();
        return *component;
    }

    template <typename T>
    T &getComponent() const
    {
        auto ptr(componentArray[getComponentTypeID<T>()]);
        return *static_cast<T *>(ptr);
    }
};

class Manager
{
private:
    std::vector<std::unique_ptr<Entity>> entities;

public:
    void update()
    {
        for (auto &entity : entities)
            entity->update();
    }

    void draw()
    {
        for (auto &entity : entities)
            entity->draw();
    }

    void refresh()
    {
        entities.erase(std::remove_if(std::begin(entities), std::end(entities), [](const std::unique_ptr<Entity> &mEntity)
                                      { return !mEntity->isActive(); }),
                       std::end(entities));
    }

    Entity &addEntity()
    {
        Entity *e = new Entity();

        std::unique_ptr<Entity> uniqueEntityPtrForAddingEntity{e};
        entities.emplace_back(std::move(uniqueEntityPtrForAddingEntity));
        return *e;
    }
};
#endif /* ecs_h */