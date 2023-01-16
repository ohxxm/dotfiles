#!/bin/sh

default() {
player_status=$(playerctl status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title)"
else
    echo ""
fi
}

echoStatusIcon() {
  s=$(playerctl status)
  if [[ $s == "Playing" ]]; then
    echo " "
  else
    echo " "
  fi
}

getSongArt() {
  tmp_dir="$HOME/.cache/eww/spotify"
  tmp_cover_path=$tmp_dir/cover.png
  tmp_temp_path=$tmp_dir/temp.png

  if [ ! -d $tmp_dir ]; then
	  mkdir -p $tmp_dir
  fi

  artlink="$(playerctl metadata mpris:artUrl)"

  if [ $(playerctl metadata mpris:artUrl) ]; then
	  curl -s "$artlink" --output $tmp_temp_path
  else
	  cp $HOME/.config/eww/assets/fallback.png $tmp_temp_path
  fi
}

echoSongArt() {
  s=$(playerctl status)
  if [[ $s == "Playing" ]]; then
    echo "$HOME/.cache/eww/spotify/temp.png"
  elif [[ $s == "Paused" ]]; then
    echo "$HOME/.cache/eww/spotify/temp.png"
  else
    echo ""
fi 
}

songTime() {
  s=$(playerctl status)
  if [[ $s == "Playing" ]]; then
    songTime=$(playerctl metadata --format "{{ duration(mpris:length) }}")
    echo "$songTime"
  else
    echo ""
  fi
}

songTimeRemaining() {
  s=$(playerctl status)
  if [[ $s == "Playing" ]]; then
    songTimeRemaining=$(playerctl metadata --format "{{ duration(position) }}")
    echo "$songTimeRemaining"
  else
    echo ""
  fi
}


if [[ "$1" == "--song_art" ]]; then
  echoSongArt
elif [[ "$1" == "--get_song_art" ]]; then
  getSongArt
elif [[ "$1" == "--status_icon" ]]; then
  echoStatusIcon
elif [[ "$1" == "--song_name" ]]; then
  default
elif [[ "$1" == "--song_time" ]]; then
  songTime
elif [[ "$1" == "--song_time_remaining" ]]; then 
  songTimeRemaining
fi
