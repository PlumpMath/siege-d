import std.random;
import siege.siege;


void main()
{
    sgcore.loadModules("SDL", "OpenGL");
    sgcore.init(0);
    window.open(640, 480, 32, 0);
    window.title = "SIEGE D A-Star Demo";

    auto grid = new NavGrid(640 / 32, 480 / 32, true, false);
    grid.addStart(1, 1);
    grid.addGoal(640 / 32 - 2, 480 / 32 - 2);

    auto gen = Random(unpredictableSeed());
    for (uint i = 0; i < 20 * 15 / 4; i++) {
        auto x = uniform(0, 20, gen);
        auto y = uniform(0, 15, gen);
        if ((x == 1 && y == 1) || (x == 640 / 32 - 2 && y == 480 / 32 - 2)) {
            i--;
            continue;
        }
        grid.addWall(x, y);
    }


    grid.searchCreate();
    while (!grid.searchStep()) {
    }
    List!(NavGridData*)* path;
    if (grid.goalFound) {
        path = grid.searchPath();
    }

    while (sgcore.loop()) {
        foreach (i; 0 .. grid.width) {
            foreach (j; 0 .. grid.height) {
                auto data = grid.getData(i, j);
                final switch (data.type) with (GridType) {
                case Clear: draw.color(0.25, 0.25, 0.25, 1.0); break;
                case Wall:  draw.color(0.0 , 0.0 , 0.0 , 1.0); break;
                case Start: draw.color(1.0 , 0.0 , 0.0 , 1.0); break;
                case Goal:  draw.color(0.0 , 1.0 , 0.0 , 1.0); break;
                }
                draw.rectangle(data.x * 32, j * 32, i * 32 + 32, j * 32 + 32, 1);
            }
        }

        if (path) {
            draw.color(1.0, 1.0, 1.0, 0.5);
            foreach (node; *path) {
                draw.rectangle(node.x * 32, node.y * 32, node.x * 32 + 32, node.y * 32 + 32, 1);
            }
        }

        window.swapBuffers();
        draw.clear();
    }
}

