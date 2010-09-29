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

module siege.siege;

private
{
    import siege.c.siege;

    import siege.core.core;
    import siege.core.window;
    import siege.graphics.draw;
    import siege.input.keyboard;
    import siege.input.mouse;
}

public
{
    alias siege.core.core core;
    alias siege.core.window window;
    alias siege.graphics.draw draw;
    alias siege.input.keyboard keyboard;
    alias siege.input.mouse mouse;

    import siege.graphics.turtle;
    import siege.graphics.viewport;
}
