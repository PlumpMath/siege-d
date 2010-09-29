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

module siege.c.audio.buffer;

import siege.c.common;

extern(C):

struct SGBuffer
{
    void* handle;
}

SGbool _sgBufferInit();
SGbool _sgBufferDeinit();

SGBuffer* sgBufferCreate(char* fname);
void sgBufferDestroy(SGBuffer* buffer);

void sgBufferSetData(SGBuffer* buffer, SGuint channels, SGuint format, SGuint frequency, void* data, SGuint datalen);
void* sgBufferGetHandle(SGBuffer* buffer);

