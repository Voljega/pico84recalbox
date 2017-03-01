#!/bin/bash
picopath="recalbox/share/emulateurs/pico8"
#"$picopath"/loadmap "$picopath"/gamepad.map & 
SDL_VIDEO_GL_DRIVER=/usr/lib/libGLESv2.so SDL_VIDEO_EGL_DRIVER=/usr/lib/libGLESv2.so /"$picopath"/pico8 -run "$1" -joystick 0
#killall loadmap
sleep 1