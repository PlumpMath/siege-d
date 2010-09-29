module siege.c.audio.source;

import siege.c.common;
import siege.c.audio.buffer;
import siege.c.util.plist;

extern(C):

struct SGSourceDispatch
{
    SGSource* source;
    void* handle;
}

struct SGSource
{
    SGSourceDispatch* dispatch;
    float priority;
}

SGbool _sgSourceInit();
SGbool _sgSourceDeinit();

SGSourceDispatch* _sgSourceGetFreeDispatch(SGSource* source);

SGSource* sgSourceCreate(SGBuffer* buffer, float priority, float volume, float pitch, SGbool looping);
void sgSourceDestroy(SGSource* source);
void sgSourcePlay(SGSource* source);

SGbool sgSourceIsActive(SGSource* source);

void* sgSourceGetHandle(SGSource* source);

