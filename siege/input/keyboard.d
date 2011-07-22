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

module siege.input.keyboard;

import siege.c.common;
import siege.c.input.keyboard;

bool key(SGenum key)
{
    return sgKeyboardKey(key);
}

bool press(SGenum key)
{
    return sgKeyboardKeyPress(key);
}

bool release(SGenum key)
{
    return sgKeyboardKeyRelease(key);
}

bool character(dchar c)
{
    return sgKeyboardChar(c);
}

bool characterPress(dchar c)
{
    return sgKeyboardCharPress(c);
}

bool characterRelease(dchar c)
{
    return sgKeyboardCharRelease(c);
}

