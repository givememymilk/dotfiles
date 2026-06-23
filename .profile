#!/bin/sh

#set -euo pipefail
#trap '' INT

ConfDir="$HOME"/.config/profile.d/

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
        helix emacs \
        clang shellcheck-bin \
        man-db man-pages \
        eza bat zoxide fd fzf starship\
	      alsa-utils \
        wezterm
      ;;
  esac
}

case $- in
  *i*) source "$HOME"/.config/profile.d/rc
esac

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
