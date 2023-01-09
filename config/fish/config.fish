set -U fish_greeting
starship init fish | source
fetch -c ~/.config/hypr/apps/fetch/conf

alias ls="exa --icons -l"
alias cat="bat"
