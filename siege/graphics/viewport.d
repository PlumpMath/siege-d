module siege.graphics.viewport;

import siege.c.siege;

class Viewport
{
    private
    {
        SGViewport* handle;
    }

    this(uint wposx, uint wposy, uint wsizex, uint wsizey, float posx, float posy, float sizex, float sizey)
    {
        handle = sgViewportCreate4i4f(wposx, wposy, wsizex, wsizey, posx, posy, sizex, sizey);
    }
    this(uint wposx, uint wposy, uint wsizex, uint wsizey)
    {
        handle = sgViewportCreate4i(wposx, wposy, wsizex, wsizey);
    }
    this()
    {
        handle = sgViewportCreate();
    }
    ~this()
    {
        sgViewportDestroy(handle);
    }

    void set(uint wposx, uint wposy, uint wsizex, uint wsizey, float posx, float posy, float sizex, float sizey)
    {
        sgViewportSet4i4f(handle, wposx, wposy, wsizex, wsizey, posx, posy, sizex, sizey);
    }
    void set(uint wposx, uint wposy, uint wsizex, uint wsizey)
    {
        sgViewportSet4i(handle, wposx, wposy, wsizex, wsizey);
    }
    void reset()
    {
        sgViewportReset(handle);
    }
}
