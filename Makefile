.ONESHELL:
XDG:
	export XDG_CONFIG_HOME="$(HOME)"/.config
	export XDG_CACHE_HOME="$(HOME)"/'.local'/cache
	export XDG_DATA_HOME="$(HOME)"/'.local'/share
	export XDG_STATE_HOME="$(HOME)"/'.local'/state
Xorg: XDG
	export xConfDir="$(XDG_CONFIG_HOME)"/xorg
	startx ~/.config/xorg/xinitrc
