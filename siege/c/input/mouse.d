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

module siege.c.input.mouse;

import siege.c.common;
import siege.c.modules.input;

extern(C):

void _sg_cbMouseButton(void* mouse, SGuint button, SGbool action);
void _sg_cbMouseMove(void* mouse, SGint x, SGint y);
void _sg_cbMouseWheel(void* mouse, SGint w);

SGbool _sgMouseInit();
SGbool _sgMouseDeinit();

void sgMousePositionPrev(SGint* x, SGint* y);
SGint sgMouseXPrev();
SGint sgMouseYPrev();

void sgMousePosition(SGint* x, SGint* y);
SGint sgMouseX();
SGint sgMouseY();

SGint sgMouseWheelPrev();
SGint sgMouseWheel();

SGbool sgMouseButtonPrev(SGuint button);
SGbool sgMouseButton(SGuint button);
SGbool sgMouseButtonPress(SGuint button);
SGbool sgMouseButtonRelease(SGuint button);

SGbool sgMouseButtonLeftPrev();
SGbool sgMouseButtonLeft();
SGbool sgMouseButtonLeftPress();
SGbool sgMouseButtonLeftRelease();

SGbool sgMouseButtonRightPrev();
SGbool sgMouseButtonRight();
SGbool sgMouseButtonRightPress();
SGbool sgMouseButtonRightRelease();

SGbool sgMouseButtonMiddlePrev();
SGbool sgMouseButtonMiddle();
SGbool sgMouseButtonMiddlePress();
SGbool sgMouseButtonMiddleRelease();

