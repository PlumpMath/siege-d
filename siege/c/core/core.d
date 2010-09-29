module siege.c.core.core;

import siege.c.common;

extern(C):

SGuint sgLoadModules(char** modules);
SGbool sgLoadModule(char* name);
SGbool sgInit(SGuint width, SGuint height, SGuint bpp, SGenum flags);
SGbool sgDeinit();

SGint sgRun();
SGbool sgLoop(SGint* code);
void sgStop(SGint ret);
