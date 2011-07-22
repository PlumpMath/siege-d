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

    @property void step(float time)
    {
        sgPhysicsSpaceStep(handle, time);
    }

    @property void damping(float d)
    {
        sgPhysicsSpaceSetDamping(handle, d);
    }

    void setGravity(float x, float y)
    {
        sgPhysicsSpaceSetGravity(handle, x, y);
    }

    void rehash()
    {
        sgPhysicsSpaceRehash(handle);
    }
}

