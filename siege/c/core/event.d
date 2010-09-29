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

module siege.c.core.event;

import siege.c.util.plist;
import siege.c.common;

extern(C):

enum: SGenum
{
    SG_EV_INTERNAL = -1,
}

// EventClient types -- these should be OR'd together
enum: SGenum
{
    SG_EVT_MODULE   = 0x000100,
    SG_EVT_CORE     = 0x000200,
    SG_EVT_WINDOW   = 0x000400,
    SG_EVT_MOUSE    = 0x000800,
    SG_EVT_KEYBOARD = 0x001000,
    SG_EVT_JOYSTICK = 0x002000,
    SG_EVT_NETWORK  = 0x004000,
    SG_EVT_PHYSICS  = 0x008000,
    SG_EVT_LEVEL    = 0x010000,
    SG_EVT_FULL     = 0xFFFF00,
}

// EventClient functions -- used in calls
enum: SGenum
{
    SG_EVF_INIT   = SG_EVT_MODULE | 1,
    SG_EVF_DEINIT = SG_EVT_MODULE | 2,

    SG_EVF_START = SG_EVT_CORE | 1,
    SG_EVF_EXIT  = SG_EVT_CORE | 2,
    SG_EVF_TICK  = SG_EVT_CORE | 3,
    SG_EVF_TICKB = SG_EVT_CORE | 4,
    SG_EVF_TICKE = SG_EVT_CORE | 5,
    SG_EVF_DRAW  = SG_EVT_CORE | 6,

    SG_EVF_WINOPEN   = SG_EVT_WINDOW | 1,
    SG_EVF_WINCLOSE  = SG_EVT_WINDOW | 2,
    SG_EVF_WINRESIZE = SG_EVT_WINDOW | 3,

    /*
        H: held
        P: press
        R: release
        A: repeat ("again")
    */

    SG_EVF_MOUSEBUTH  = SG_EVT_MOUSE | 1,
    SG_EVF_MOUSEBUTP  = SG_EVT_MOUSE | 2,
    SG_EVF_MOUSEBUTR  = SG_EVT_MOUSE | 3,
    SG_EVF_MOUSEBUTLH = SG_EVT_MOUSE | 4,
    SG_EVF_MOUSEBUTLP = SG_EVT_MOUSE | 5,
    SG_EVF_MOUSEBUTLR = SG_EVT_MOUSE | 6,
    SG_EVF_MOUSEBUTRH = SG_EVT_MOUSE | 7,
    SG_EVF_MOUSEBUTRP = SG_EVT_MOUSE | 8,
    SG_EVF_MOUSEBUTRR = SG_EVT_MOUSE | 9,
    SG_EVF_MOUSEBUTMH = SG_EVT_MOUSE | 10,
    SG_EVF_MOUSEBUTMP = SG_EVT_MOUSE | 11,
    SG_EVF_MOUSEBUTMR = SG_EVT_MOUSE | 12,
    SG_EVF_MOUSEMOVE  = SG_EVT_MOUSE | 13,
    SG_EVF_MOUSEWHEEL = SG_EVT_MOUSE | 14,

    SG_EVF_KEYKEYH  = SG_EVT_KEYBOARD | 1,
    SG_EVF_KEYKEYP  = SG_EVT_KEYBOARD | 2,
    SG_EVF_KEYKEYR  = SG_EVT_KEYBOARD | 3,
    SG_EVF_KEYKEYA  = SG_EVT_KEYBOARD | 4,
    //SG_EVF_KEYCHARH = SG_EVT_KEYBOARD | 5,
    SG_EVF_KEYCHARP = SG_EVT_KEYBOARD | 6,
    //SG_EVF_KEYCHARR = SG_EVT_KEYBOARD | 7,
    SG_EVF_KEYCHARA = SG_EVT_KEYBOARD | 8,

    SG_EVF_JOYSTICKBUTH = SG_EVT_JOYSTICK | 1,
    SG_EVF_JOYSTICKBUTP = SG_EVT_JOYSTICK | 2,
    SG_EVF_JOYSTICKBUTR = SG_EVT_JOYSTICK | 3,
    SG_EVF_JOYSTICKMOVE = SG_EVT_JOYSTICK | 4,

    //SG_EVF_NET = SG_EVT_NETWORK | 1,

    SG_EVF_PHYSCOLH  = SG_EVT_PHYSICS | 1,
    SG_EVF_PHYSCOL1  = SG_EVT_PHYSICS | 2,
    SG_EVF_PHYSCOL2  = SG_EVT_PHYSICS | 3,
    SG_EVF_PHYSCOLBH = SG_EVT_PHYSICS | 4,
    SG_EVF_PHYSCOLB1 = SG_EVT_PHYSICS | 5,
    SG_EVF_PHYSCOLB2 = SG_EVT_PHYSICS | 6,
    SG_EVF_PHYSCOLEH = SG_EVT_PHYSICS | 7,
    SG_EVF_PHYSCOLE1 = SG_EVT_PHYSICS | 8,
    SG_EVF_PHYSCOLE2 = SG_EVT_PHYSICS | 9,
    SG_EVF_PHYSCOLRH = SG_EVT_PHYSICS | 10,
    SG_EVF_PHYSCOLR1 = SG_EVT_PHYSICS | 11,
    SG_EVF_PHYSCOLR2 = SG_EVT_PHYSICS | 12,

    SG_EVF_LVLSTART = SG_EVT_LEVEL | 1,
    SG_EVF_LVLEND   = SG_EVT_LEVEL | 2,
}

/**
    \param data Used-provided data
    \param args Event arguments (depends on the type of event)
    \return SG_TRUE to continue with the next event, SG_FALSE to stop
*/
alias SGbool (*SGEventCall)(void* data, void* args);

struct SGEvent
{
    float priority;
    SGenum type;
    void* data;
    SGEventCall func;
}

SGbool _sgEventInit();
SGbool _sgEventDeinit();
SGEvent* sgEventCreate(float priority, SGenum type, void* data, SGEventCall func);
void sgEventDestroy(SGEvent* event);
void sgEventCall(SGenum type, void* args);

// employs an EventClient wrapper over the "generalized" events above
struct _SGEventCall
{
    SGuint num;
    SGenum* types;
    void** args;
}

struct SGEventClient
{
    SGenum type;
    SGEvent* event;
    SGvoid (*evTest)(int a, int b);
}

SGbool _sg_evCall(SGEventClient* client, _SGEventCall* call);

SGbool _sgEventClientInit();
SGbool _sgEventClientDeinit();

SGEventClient* sgEventClientCreate(float priority, SGenum type);
void sgEventClientDestroy(SGEventClient* client);
