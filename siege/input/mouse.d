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

module siege.input.mouse;

import siege.c.siege;

void positionPrev(out int x, out int y)
{
    sgMousePositionPrev(&x, &y);
}
int xPrev()
{
    return sgMouseXPrev();
}
int yPrev()
{
    return sgMouseYPrev();
}

void position(out int x, out int y)
{
    sgMousePosition(&x, &y);
}
int x()
{
    return sgMouseX();
}
int y()
{
    return sgMouseY();
}

int wheelPrev()
{
    return sgMouseWheelPrev();
}
int wheel()
{
    return sgMouseWheel();
}

bool buttonPrev(uint button)
{
    return sgMouseButtonPrev(button);
}
bool button(uint button)
{
    return sgMouseButton(button);
}
bool buttonPress(uint button)
{
    return sgMouseButtonPress(button);
}
bool buttonRelease(uint button)
{
    return sgMouseButtonRelease(button);
}

bool buttonLeftPrev()
{
    return sgMouseButtonLeftPrev();
}
bool buttonLeft()
{
    return sgMouseButtonLeft();
}
bool buttonLeftPress()
{
    return sgMouseButtonLeftPress();
}
bool buttonLeftRelease()
{
    return sgMouseButtonLeftRelease();
}

bool buttonRightPrev()
{
    return sgMouseButtonRightPrev();
}
bool buttonRight()
{
    return sgMouseButtonRight();
}
bool buttonRightPress()
{
    return sgMouseButtonRightPress();
}
bool buttonRightRelease()
{
    return sgMouseButtonRightRelease();
}

bool buttonMiddlePrev()
{
    return sgMouseButtonMiddlePrev();
}
bool buttonMiddle()
{
    return sgMouseButtonMiddle();
}
bool buttonMiddlePress()
{
    return sgMouseButtonMiddlePress();
}
bool buttonMiddleRelease()
{
    return sgMouseButtonMiddleRelease();
}

