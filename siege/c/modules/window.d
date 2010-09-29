module siege.c.modules.window;

import siege.c.common;
import siege.c.util.link;

extern(C):

void _sgModuleLoadWindow(SGLibrary* lib);

struct SGCoreWindowCallbacks
{
    void (*open)(void* window);
    void (*close)(void* window);
    void (*resize)(void* window, SGuint width, SGuint height);
}
