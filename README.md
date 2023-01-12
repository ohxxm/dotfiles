<h1 align="center">WIP Dotfiles</h1>

<h3 align="center">If you decide to use my config, please do give me credit in the README of your fork/repo.</center>
<br>

| Feature              | Package                                                 |
| -------------------- | ------------------------------------------------------- |
| Window Manager       | [`bspwm`](https://github.com/baskerville/bspwm)         |
| Compositor           | [`pijulius/picom`](https://github.com/pijulius/picom)   |
| Terminal             | [`kitty`](https://github.com/kovidgoyal/kitty)          |
| Shell                | [`fish`](https://www.fishshell.com/)                    |
| Editor               | [`neovim`](https://github.com/neovim/neovim)            |
| Bar                  | [`polybar`](https://github.com/polybar/polybar)         |
| Dashboard            | [`eww`](https://github.com/elkowar/eww)                 |
| Notification Manager | [`dunst`](https://github.com/dunst-project/dunst)       |
| Application Launcher | [`rofi`](https://github.com/davatorium/rofi)            |
| Application Menu     | [`jgmenu`](https://github.com/johanmalm/jgmenu)         |

<h1 align="center">Dotfiles in action!</h1>
https://user-images.githubusercontent.com/68564017/212144838-20e760b7-c5c6-427d-8828-660568d47a20.mp4

# Install
```yay -Syu $(cat config/bspwm/pkglist)```

**This command may overwrite your config files**
<br>
```cp -rf config/* ~/.config/``` 
<br>
```cp home/* ~/```
<br>
```cp bin/* /usr/local/bin/```
<br>
**The last command may require superuser permissions**

# Features
* Hyprland-like animations in BSPWM using picom
* Aesthetic bar config
* Switch between Light & Dark mode in a click of a button!

# WIP
* EWW Dashboard

# Credits

<a href="https://github.com/Manas140">Manas140</a> - Used his fetch script 
<a href="https://github.com/AlphaTechnolog/">AlphaTechnolog</a> - Used his eww config as reference for music players & used his script to fetch the music art
