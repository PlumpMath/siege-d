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

import siege.c.siege;

bool key(uint key)
{
    return sgKeyboardKey(key);
}
bool keyPress(uint key)
{
    return sgKeyboardKeyPress(key);
}
bool keyRelease(uint key)
{
    return sgKeyboardKeyRelease(key);
}

bool chr(dchar chr)
{
    return sgKeyboardChar(chr);
}
bool chrPress(dchar chr)
{
    return sgKeyboardCharPress(chr);
}
bool chrRelease(dchar chr)
{
    return sgKeyboardCharRelease(chr);
}
