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

module siege.c.modules.input;

import siege.c.common;
import siege.c.util.link;

extern(C):

void _sgModuleLoadInput(SGLibrary* lib);

struct SGCoreJoystickCallbacks
{
    void (*button)(void* joystick, SGuint button, SGbool down);
    //void (*button)(void* joystick, SGbool* buttons);
    //void (*move)(void* joystick, SGuint axis, float position);
    void (*move)(void* joystick, float* axis);
}

struct SGCoreKeyboardCallbacks
{
    void (*key)(void* keyboard, SGuint key, SGbool down);
    void (*chr)(void* keyboard, SGdchar chr, SGbool down);
}

struct SGCoreMouseCallbacks
{
    void (*button)(void* mouse, SGuint button, SGbool down);
    void (*move)(void* mouse, SGint x, SGint y);
    void (*wheel)(void* mouse, SGint w);
}
