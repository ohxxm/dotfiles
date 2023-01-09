#!/bin/bash

killall polybar
polybar -c $HOME/.config/bspwm/apps/polybar/config.ini &
