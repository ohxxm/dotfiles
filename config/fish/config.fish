set -U fish_greeting
starship init fish | source
fetch -c ~/.config/hypr/apps/fetch/conf

alias ls="exa --icons -l"

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx /bin/bspwm -- -keeptty
    end
end
