# vim: ft=sh
[ $TERM != linux ] && is_tty=true

export EDITOR=vim
export PAGER=less

append_path()
{
    case ":$PATH:" in
        *:"$1":*) ;;
        *) PATH="${PATH:+$PATH:}$1"
    esac
}

prepend_path()
{    
    case ":$PATH:" in
        *:"$1":*) ;;
        *) PATH="$1${PATH:+$PATH:}"
    esac

}

append_path "$HOME"/".local"/bin
append_path "$HOME"/.bin
append_path "$HOME"/'.local'/bin/scripts

alias ls='ls --color --group-directories-first'
alias ed="$EDITOR"
alias p="$PAGER"

[[ $TERM = 'alacritty' ]] && exec tmux
