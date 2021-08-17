#! /usr/bin/zsh

# Start nested xserver
Xephyr :3 &

# start gala on the new display
G_MESSAGES_DEBUG=all gala -d :3 &

sleep 2

# start a few applications to switch between
DISPLAY=:3 flatpak run io.elementary.calculator &
DISPLAY=:3 flatpak run io.elementary.tasks
