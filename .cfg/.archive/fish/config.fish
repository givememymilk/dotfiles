function set_alias -a cmd cmd_new
  if type -q "$cmd_new"
    alias "$cmd"="$cmd_new"
  end
end
if status is-interactive
  # Commands to run in interactive sessions can go here
  if [ $TERM != 'linux' ]
    source (/usr/bin/starship init fish --print-full-init | psub)
  end

  zoxide init fish | source
  fzf --fish | source

 
  if [ $TERM != 'linux' ]
    set_alias ls 'eza --color'
  else
    set_alias ls 'eza --color --icons'
  end

  if type -q bat
    alias cat='bat'
  end
end
