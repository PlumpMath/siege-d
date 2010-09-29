module siege.input.keyboard;

import siege.c.siege;

bool key(uint key)
{
    return sgKeyboardKey(key);
}
bool keyPress(uint key)
{
    return sgKeyboardKeyPress(key);
}
bool keyRelease(uint key)
{
    return sgKeyboardKeyRelease(key);
}

bool chr(dchar chr)
{
    return sgKeyboardChar(chr);
}
bool chrPress(dchar chr)
{
    return sgKeyboardCharPress(chr);
}
bool chrRelease(dchar chr)
{
    return sgKeyboardCharRelease(chr);
}
