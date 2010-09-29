module siege.c.graphics.viewport;

import siege.c.common;
import siege.c.util.list;

extern(C):

struct SGViewport
{
    void* handle;

    SGuint wposx;
    SGuint wposy;
    SGuint wsizex;
    SGuint wsizey;
    float posx;
    float posy;
    float sizex;
    float sizey;
}

SGbool _sgViewportInit();
SGbool _sgViewportDeinit();

SGViewport* sgViewportCreate4i4f(SGuint wposx, SGuint wposy, SGuint wsizex, SGuint wsizey, float posx, float posy, float sizex, float sizey);
SGViewport* sgViewportCreate4i(SGuint wposx, SGuint wposy, SGuint wsizex, SGuint wsizey);
SGViewport* sgViewportCreate();
void sgViewportDestroy(SGViewport* viewport);
void sgViewportSet4i4f(SGViewport* viewport, SGuint wposx, SGuint wposy, SGuint wsizex, SGuint wsizey, float posx, float posy, float sizex, float sizey);
void sgViewportSet4i(SGViewport* viewport, SGuint wposx, SGuint wposy, SGuint wsizex, SGuint wsizey);
void sgViewportReset(SGViewport* viewport);

