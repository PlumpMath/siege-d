/*
    Copyright (c) 2007 SIEGE Development Team
    All rights reserved.

    This file is part of libSIEGE.

    This software is copyrighted work licensed under the terms of the
    2-clause BSD license. Please consult the file "license.txt" for
    details.

    If you did not recieve the file with this program, please email
    Tim Chas <darkuranium@gmail.com>.
*/

module siege.core.window;

import siege.c.siege;

import std.string;
import std.c.stdarg;

bool open(uint width, uint height, uint bpp, uint flags)
{
    return sgWindowOpen(width, height, bpp, flags);
}

bool isOpened()
{
    return sgWindowIsOpened();
}

void close()
{
    sgWindowClose();
}

void setTitleF(char[] format, ...)
{
    va_list args;
    va_start(args, format);
    sgWindowSetTitleFV(toStringz(format), args);
    va_end(args);
}
void setTitleFV(char[] format, va_list args)
{
    sgWindowSetTitleFV(toStringz(format), args);
}
void setTitle(char[] title)
{
    sgWindowSetTitle(toStringz(title));
}
char[] getTitle()
{
    return toString(sgWindowGetTitle());
}

void setSize(uint width, uint height)
{
    sgWindowSetSize(width, height);
}
void getSize(out uint width, out uint height)
{
    sgWindowGetSize(&width, &height);
}

void setWidth(uint width)
{
    sgWindowSetWidth(width);
}
uint getWidth()
{
    return sgWindowGetWidth();
}
void setHeight(uint height)
{
    sgWindowSetHeight(height);
}
uint getHeight()
{
    return sgWindowGetHeight();
}

void swapBuffers()
{
    sgWindowSwapBuffers();
}

void* getHandle()
{
    return sgWindowGetHandle();
}
void* getGHandle()
{
    return sgWindowGetGHandle();
}
