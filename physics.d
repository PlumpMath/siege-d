import std.stdio;
import std.range;
import siege.siege;
import siege.c.siege;

__gshared Sprite sprCrateSmall, sprFloorMetalPlate, sprHazardWall, sprPacman, sprStrongboxSmall, sprSupportBar;
__gshared Box[] entities;
__gshared bool overlay = false;
__gshared Font font;
__gshared Space space;

enum MAXCOLLS = 32;
enum MAXCONTS = 64;

class Box : Entity
{
    Shape shape;

    this(Sprite spr, float x, float y, float angle, float density, bool isStatic)
    {
        auto type = BodyType.Normal;
        if (isStatic) {
            type = (density == float.infinity) ? BodyType.Static : BodyType.Semistatic;
        }
        float w = spr.width;
        float h = spr.height;
        float[] verts = [
            -w / 2.0, -h / 2.0,
            -w / 2.0,  h / 2.0,
             w / 2.0,  h / 2.0,
             w / 2.0, -h / 2.0];

        physicsBody = new Body(null, type);
        sprite = spr;
        setPos(x, y);
        this.angle = Degrees(angle);

        shape = new Poly(physicsBody, 0.0, 0.0, verts);
        shape.restitution = 0.25;
        shape.friction = 0.75;

        physicsBody.mass = shape.mass(density);
        physicsBody.moment = shape.momentDensity(density);
        physicsBody.setPos(x, y);
    }

    override void evDraw()
    {
        if (visible) draw();
        if (overlay) drawDBG();
    }

    void drawDBG()
    {
        shape.drawDBG();
    }
}

class WoodenBox : Box
{
    this(float x, float y, float angle)
    {
        super(sprCrateSmall, x, y, angle, 1.0, false);
    }
}

class MetalBox : Box
{
    this(float x, float y, float angle)
    {
        super(sprStrongboxSmall, x, y, angle, 2.5, false);
    }
}

class Floor : Box
{
    this(Sprite spr, float x, float y)
    {
        super(spr, x, y, 0.0, float.infinity, true);
    }
}

class Controller : Entity
{
    override void evMouseButtonLeftPress()
    {
        entities ~= new MetalBox(mouse.x(), mouse.y(), 0.0);
    }

    override void evMouseButtonRightPress()
    {
        entities ~= new WoodenBox(mouse.x(), mouse.y(), 0.0);
    }

    override void evKeyboardKeyPress(uint key)
    {
        if (key == SG_KEYBOARD_KEY_F1) {
            overlay = !overlay;
        }
    }

    override void evKeyboardKeyRepeat(uint key)
    {
        evKeyboardKeyPress(key);
    }

    override void evDraw()
    {
        font.cprintf(1.0, 10.0, "FPS: %.2f", window.FPS);
    }
}

void main()
{
    sgcore.loadModules("SDL", "OpenGL", "DevIL", "Chipmunk", "Freetype");
    sgcore.init(0);
    window.open(640, 480, 32, 0);
    window.title = "SIEGE D Physics Demo - Press F1 for debug overlay";
    window.FPSLimit = 60.0f;

    space = Space.getDefault();
    space.iterations = 10;
    space.damping = 0.75;
    space.setGravity(0.0, 25.0);

    sprCrateSmall = new Sprite("data/sprites/CrateSmall.png");
    sprFloorMetalPlate = new Sprite("data/sprites/FloorMetalPlate.png");
    sprStrongboxSmall = new Sprite("data/sprites/StrongboxSmall.png");
    sprHazardWall = new Sprite("data/sprites/HazardWall.png");
    sprPacman = new Sprite("data/sprites/Pacman.png");
    sprSupportBar = new Sprite("data/sprites/SupportBar.png");
    font = new Font("data/fonts/DejaVuSans.ttf", 7.0);

    foreach (i; iota(32, 640, 64)) entities ~= new Floor(sprFloorMetalPlate, i, 448);
    foreach (i; iota(224, 448, 64)) entities ~= new Floor(sprSupportBar, i, 384);
    foreach (i; iota(224, 448, 64)) entities ~= new Floor(sprHazardWall, i, 320);

    auto controller = new Controller();
    sgcore.run();
}

