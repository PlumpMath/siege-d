module siege.c.modules.modules;

import siege.c.common;
import siege.c.util.list;
import siege.c.util.link;

extern(C):

/*#define _SG_BIND(name) \
    fptr = sgGetProcAddress(lib, #name);   \
    if((fptr != NULL) || _sg_modFirst)     \
        (name) = fptr;*/

struct SGModule
{
    char* name;
    SGLibrary* lib;
    SGModuleInfo* minfo;

    SGuint (*sgmModuleInit)(void* gc, SGModuleInfo** minfo);
    SGuint (*sgmModuleExit)(SGModuleInfo* minfo);
    //SGuint (*sgmModuleFree)(void* data);
    SGuint (*sgmModuleMatch)(SGModuleInfo** minfos, SGuint numinfos, SGbool* ok);
}

char* _sgModuleGetFile(char* c_module);
SGbool _sgModuleInit();
SGbool _sgModuleDeinit();

SGModule* sgModuleLoad(char* name);
void sgModuleUnload(SGModule* c_module);
