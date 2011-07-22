module siege.physics.space;

import siege.c.physics.space;


class Space
{
    SGPhysicsSpace* handle;

    this()
    {
        handle = sgPhysicsSpaceCreate();
        assert(handle);
    }

    ~this()
    {
        sgPhysicsSpaceDestroy(handle);
    }

    void step(float time)
    {
        sgPhysicsSpaceStep(handle, time);
    }

    void setGravity(float x, float y)
    {
        sgPhysicsSpaceSetGravity(handle, x, y);
    }
}

