#!/bin/bash
picopath="/recalbox/share/emulateurs/pico8"
#"$picopath"/loadmap "$picopath"/gamepad.map &
if [ "$1" == "/recalbox/share/roms/pico8/Splore.p8" ]; then
	SDL_VIDEO_GL_DRIVER=/usr/lib/libGLESv2.so SDL_VIDEO_EGL_DRIVER=/usr/lib/libGLESv2.so "$picopath"/pico8 -splore -joystick 0
else
	SDL_VIDEO_GL_DRIVER=/usr/lib/libGLESv2.so SDL_VIDEO_EGL_DRIVER=/usr/lib/libGLESv2.so "$picopath"/pico8 -run "$1" -joystick 0
fi
#killall loadmap
sleep 1