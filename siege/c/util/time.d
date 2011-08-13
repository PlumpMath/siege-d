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

module siege.c.util.time;

import siege.c.common;

extern(C):

enum SG_NANOSECONDS_IN_A_SECOND = 1000000000;

SGlong sgGetTime();
void sgSleep(SGint);

