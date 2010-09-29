module siege.graphics.turtle;

import siege.c.siege;

class Turtle
{
    private
    {
        SGTurtle* handle;
    }

    this(float x, float y, float angle, bool draw)
    {
        handle = sgTurtleCreate(x, y, angle, draw);
    }
    this(float x, float y, float angle)
    {
        this(x, y, angle, true);
    }
    this(float x, float y, bool draw)
    {
        this(x, y, 0.0, draw);
    }
    this(float x, float y)
    {
        this(x, y, 0.0, true);
    }
    ~this()
    {
        sgTurtleDestroy(handle);
    }

    void reset()
    {
        sgTurtleReset(handle);
    }
    void push()
    {
        sgTurtlePush(handle);
    }
    void pop()
    {
        sgTurtlePop(handle);
    }
    void step(float dist)
    {
        sgTurtleStep(handle, dist);
    }
    void move(float x, float y)
    {
        sgTurtleMove(handle, x, y);
    }
    void jump(float x, float y)
    {
        sgTurtleJump(handle, x, y);
    }
    void penUp()
    {
        sgTurtlePenUp(handle);
    }
    void penDown()
    {
        sgTurtlePenDown(handle);
    }

    void setPen(bool pen)
    {
        sgTurtleSetPen(handle, pen);
    }
    bool getPen()
    {
        return sgTurtleGetPen(handle);
    }

    void setPos(float x, float y)
    {
        sgTurtleSetPos(handle, x, y);
    }
    void setPosX(float x)
    {
        sgTurtleSetPosX(handle, x);
    }
    void setPosY(float y)
    {
        sgTurtleSetPosY(handle, y);
    }
    void getPos(out float x, out float y)
    {
        sgTurtleGetPos(handle, &x, &y);
    }
    float getPosX()
    {
        return sgTurtleGetPosX(handle);
    }
    float getPosY()
    {
        return sgTurtleGetPosY(handle);
    }

    // positive CCW
    void turnLeftRads(float rads)
    {
        sgTurtleTurnLeftRads(handle, rads);
    }
    void turnLeftDegs(float degs)
    {
        sgTurtleTurnLeftDegs(handle, degs);
    }
    void turnRightRads(float rads)
    {
        sgTurtleTurnRightRads(handle, rads);
    }
    void turnRightDegs(float degs)
    {
        sgTurtleTurnRightDegs(handle, degs);
    }

    void setAngleRads(float rads)
    {
        sgTurtleSetAngleRads(handle, rads);
    }
    float getAngleRads()
    {
        return sgTurtleGetAngleRads(handle);
    }

    void setAngleDegs(float degs)
    {
        sgTurtleSetAngleDegs(handle, degs);
    }
    float getAngleDegs()
    {
        return sgTurtleGetAngleDegs(handle);
    }
}
