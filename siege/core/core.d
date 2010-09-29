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

module siege.core.core;

import siege.c.siege;

import std.string;

uint loadModules(char[][] names)
{
    uint ret = 0;
    foreach(name; names)
        ret += sgLoadModule(toStringz(name));
    return ret;
}

bool loadModule(char[] name)
{
    return sgLoadModule(toStringz(name));
}

bool init(uint width, uint height, uint bpp, uint flags)
{
    return sgInit(width, height, bpp, flags);
}

bool deinit()
{
    return sgDeinit();
}

int run()
{
    return sgRun();
}

bool loop()
{
    return sgLoop(null);
}

bool loop(out int code)
{
    return sgLoop(&code);
}

void stop(int ret)
{
    sgStop(ret);
}
