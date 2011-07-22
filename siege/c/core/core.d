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

module siege.c.core.core;

import siege.c.common;

extern(C):

SGbool sgLoadModule(const char* name);
SGbool sgInit(SGuint width, SGuint height, SGuint bpp, SGenum flags);
SGbool sgDeinit();

SGint sgRun();
SGbool sgLoop(SGint* code);
void sgStop(SGint ret);
SGulong sgGetTick();

