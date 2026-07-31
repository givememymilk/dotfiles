#!/bin/sh

#set -euo pipefail
#trap '' INT

get_shName()
{
  ps -p $$ | awk '$1 != "PID" {print $(NF)}'
}

ShName="${get_shName}"

inst_pkg()
{
  detect_os()
  {
    ID="$(grep '^ID' /etc/os-release \
      | cut -d'=' -f 2)"

    case "$ID" in
      "ubuntu" | "debian" | "mint")
        os_type="debian-based";;
      "arch" | "artix")
        os_type="arch-based";;
    esac
  }

  Detect_os
  case "$os_type" in
    "debian-based")
      echo 'TODO';;
    "arch-based")
      sudo pacman -S \
        xorg-server xorg-xinit \
        i3-wm i3blocks \
        clang shellcheck-bin \
        man-db man-pages \
        fd fzf starship\
	alsa-utils \
        pipewire wireplumber \
        openssh \
        wezterm
      ;;
  esac
}

case $- in
  *i*) . "$HOME"/.bashrc
esac
