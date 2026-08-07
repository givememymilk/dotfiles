# shellcheck shell=sh
# shellcheck disable=SC1090
# shellcheck disable=SC2155

export XDG_CONFIG_HOME="$HOME/.cfg"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.local/cache"

# variables for interactive shells
export ENV="$XDG_CONFIG_HOME/sh/init"
export SHCFG="$(dirname "$ENV")"

# var for xorg init
export XINITRC="$XDG_CONFIG_HOME/xorg/xinitrc"

# DO NOT CHANGE THESE TWO LINE
# OR IF YOU HAVE TO, HANDLE WITH CARE
"$SHCFG/xdg_cleanup"
. "$SHCFG/xdg_cleanup"

if test -f "$1"
then
	. "$ENV"
fi

alias CMDV='command -v'

if CMDV dinit
then
	dinit &
fi

if CMDV amixer
then
	amixer sset Master unmute
	amixer sset Speaker unmute
	amixer sset Headphone unmute
fi

