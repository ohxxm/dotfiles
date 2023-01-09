xsetroot -cursor_name left_ptr &

xinput --set-prop 'Glorious Model O' 'libinput Accel Profile Enabled' 0, 1 &

picom --config ~/.config/bspwm/apps/picom/picom.conf &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

dunst -config ~/.config/bspwm/apps/dunst/dunstrc &

~/.config/bspwm/apps/polybar/launch.sh &

eww daemon &

nitrogen --restore &
