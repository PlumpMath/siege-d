module siege.c.graphics.draw;

import siege.c.common;
import siege.c.util.plist;

extern(C):

/// \todo TODO (and put in util)
struct SGTexture
{
    void* handle;
}

SGbool _sgDrawInit();
SGbool _sgDrawDeinit();

void sgDrawBeginT(SGenum type, SGTexture* texture);
void sgDrawBegin(SGenum type);
void sgDrawEnd();
void sgDrawColor4f(float r, float g, float b, float a);
void sgDrawColor3f(float r, float g, float b);
void sgDrawColor2f(float g, float a);
void sgDrawColor1f(float g);
void sgDrawColor4ub(SGubyte r, SGubyte g, SGubyte b, SGubyte a);
void sgDrawColor3ub(SGubyte r, SGubyte g, SGubyte b);
void sgDrawColor2ub(SGubyte g, SGubyte a);
void sgDrawColor1ub(SGubyte g);
void sgDrawTexCoord2f(float x, float y);
void sgDrawVertex3f(float x, float y, float z);
void sgDrawVertex2f(float x, float y);
void sgDrawClear4f(float r, float g, float b, float a);
void sgDrawClear3f(float r, float g, float b);
void sgDrawClear2f(float g, float a);
void sgDrawClear1f(float g);
void sgDrawClear4ub(SGubyte r, SGubyte g, SGubyte b, SGubyte a);
void sgDrawClear3ub(SGubyte r, SGubyte g, SGubyte b);
void sgDrawClear2ub(SGubyte g, SGubyte a);
void sgDrawClear1ub(SGubyte g);
void sgDrawClear();

void sgDrawPoint(float x, float y);
void sgDrawPointSetSize(float size);
//float sgDrawPointGetSize();

void sgDrawLine(float x1, float y1, float x2, float y2);
void sgDrawLineSetWidth(float width);
//float sgDrawLineGetWidth();

void sgDrawTriangle(float x1, float y1, float x2, float y2, float x3, float y3, SGbool fill);

void sgDrawQuad(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4, SGbool fill);

void sgDrawRectangle(float x1, float y1, float x2, float y2, SGbool fill);

void sgDrawEllipse2R(float x, float y, float rx, float ry, SGbool fill);

void sgDrawCircle(float x, float y, float radius, SGbool fill);

