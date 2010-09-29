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

