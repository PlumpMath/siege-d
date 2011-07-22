import std.math;
import siege.siege;


void main()
{
    sgcore.loadModules("SDL", "OpenGL");
    sgcore.init(640, 480, 32, 0);
    scope (exit) sgcore.deinit();

    while (sgcore.loop()) {
        draw.clear();
        draw.triangle(0, 0, 320, 240, 0, 240, true);

        auto turtle = new Turtle(320, 240);
        turtle.penUp();
        turtle.step(100);
        turtle.turnLeft(Degrees(90));
        turtle.penDown();

        enum segs = 32;
        foreach (i; 0 .. segs) {
            turtle.step(2 * PI * 100 / cast(float)segs / 2);
            turtle.turnLeft(Degrees(360 / cast(float)segs));
            turtle.step(2 * PI * 100 / cast(float)segs / 2);
        }

        window.swapBuffers();
    }
}
