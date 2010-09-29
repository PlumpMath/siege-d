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

module siege.c.util.list;

import siege.c.common;

extern(C):

union _SGListInternal
{
    void* ptr;
    SGuint ui;
    SGulong ul;
}

struct SGList
{
    size_t numitems;
    void** items;
    _SGListInternal internal;
}

SGList* sgListCreate();
void sgListDestroy(SGList* list);
void sgListEach(SGList* list, void* data, SGbool (*cb)(SGList* list, void* item, void* data, size_t i));
void sgListAppend(SGList* list, void* item);
void sgListInsert(SGList* list, size_t i, void* item);
void sgListRemoveIndex(SGList* list, size_t i);
void sgListRemoveSlice(SGList* list, size_t i1, size_t i2);
void sgListRemoveItem(SGList* list, void* item);
