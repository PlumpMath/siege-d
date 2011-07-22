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
    sgMouseGetPosPrev(&x, &y);
}
int prevX()
{
    return sgMouseGetPosPrevX();
}
int prevY()
{
    return sgMouseGetPosPrevY();
}

void position(out int x, out int y)
{
    sgMouseGetPos(&x, &y);
}
int x()
{
    return sgMouseGetPosX();
}
int y()
{
    return sgMouseGetPosY();
}

int wheelPrev()
{
    return sgMouseGetWheelPrev();
}
int wheel()
{
    return sgMouseGetWheel();
}

bool buttonPrev(uint button)
{
    return sgMouseGetButtonPrev(button);
}
bool button(uint button)
{
    return sgMouseGetButton(button);
}
bool buttonPress(uint button)
{
    return sgMouseGetButtonPress(button);
}
bool buttonRelease(uint button)
{
    return sgMouseGetButtonRelease(button);
}

bool buttonLeftPrev()
{
    return sgMouseGetButtonLeftPrev();
}
bool buttonLeft()
{
    return sgMouseGetButtonLeft();
}
bool buttonLeftPress()
{
    return sgMouseGetButtonLeftPress();
}
bool buttonLeftRelease()
{
    return sgMouseGetButtonLeftRelease();
}

bool buttonRightPrev()
{
    return sgMouseGetButtonRightPrev();
}
bool buttonRight()
{
    return sgMouseGetButtonRight();
}
bool buttonRightPress()
{
    return sgMouseGetButtonRightPress();
}
bool buttonRightRelease()
{
    return sgMouseGetButtonRightRelease();
}

bool buttonMiddlePrev()
{
    return sgMouseGetButtonMiddlePrev();
}
bool buttonMiddle()
{
    return sgMouseGetButtonMiddle();
}
bool buttonMiddlePress()
{
    return sgMouseGetButtonMiddlePress();
}
bool buttonMiddleRelease()
{
    return sgMouseGetButtonMiddleRelease();
}

