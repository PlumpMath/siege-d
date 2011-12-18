import siege.siege;


void main()
{
    sgcore.loadModules("SDL", "OpenGL");
    sgcore.init(640, 480, 32, 0);
    window.title = "SIEGE D Draw Demo";
    while (sgcore.loop()) {
        draw.color(0.0, 0.0, 1.0, 1.0);
        draw.earc(192, 32, 64, 32, Degrees(0), Degrees(45), false, true);
        draw.color(0.0, 1.0, 0.0, 1.0);
        draw.earc(320, 32, 64, 32, Degrees(45), Degrees(0), false, true);

        draw.color(0.0, 1.0, 1.0, 1.0);
        draw.earc(192, 96, 64, 32, Degrees(0), Degrees(45), true, true);
        draw.color(1.0, 0.0, 0.0, 1.0);
        draw.earc(320, 96, 64, 32, Degrees(45), Degrees(0), true, true);

        draw.color(1.0, 1.0, 1.0, 1.0);
        draw.ellipse2R(64, 32, 64, 32, true);

        draw.ellipse2R(192, 32, 64, 32, false);
        draw.ellipse2R(320, 32, 64, 32, false);
        draw.ellipse2R(192, 96, 64, 32, false);
        draw.ellipse2R(320, 96, 64, 32, false);

        draw.color(1.0, 0.0, 0.0, 1.0);
        draw.line(64, 160, 192, 288);

        window.swapBuffers();
        draw.clear();
    }
}

