module siege.c.input.keyboard;

import siege.c.common;
import siege.c.modules.input;

extern(C):

void _sg_cbKeyboardKey(void* keyboard, SGuint key, SGbool down);
void _sg_cbKeyboardChar(void* keyboard, SGdchar chr, SGbool down);

SGint _sgKeyboardInside(SGuint* array, SGuint what, SGuint len);

SGbool _sgKeyboardInit();
SGbool _sgKeyboardDeinit();

void _sgKeyboardKeyUpdate(SGenum key, SGbool down);
void _sgKeyboardCharUpdate(SGdchar chr, SGbool down);

SGbool sgKeyboardKey(SGenum key);
SGbool sgKeyboardKeyPress(SGenum key);
SGbool sgKeyboardKeyRelease(SGenum key);

SGbool sgKeyboardChar(SGdchar chr);
SGbool sgKeyboardCharPress(SGdchar chr);
SGbool sgKeyboardCharRelease(SGdchar chr);

