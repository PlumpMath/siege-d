module siege.c.util.link;

import siege.c.common;

extern(C):

struct SGLibrary
{
    char* fname;
    void* handle;
}

SGbool _sgLibraryInit();
SGbool _sgLibraryDeinit();
SGLibrary* sgLibraryLoad(char* fname);
void sgLibraryUnload(SGLibrary* lib);
void* sgGetProcAddress(SGLibrary* lib, char* proc);

