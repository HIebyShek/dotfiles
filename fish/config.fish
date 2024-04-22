if command -v helix &> /dev/null
  set hx helix
else
  set hx hx
end

export EDITOR=$hx
export VISUAL=$hx
export PAGER=bat

alias ya=yazi

export XDG_CONFIG_HOME="$(xdg-user-dir CONFIG)"
export XDG_DATA_HOME="$(xdg-user-dir DATA)"
export XDG_STATE_HOME="$(xdg-user-dir STATE)"
export XDG_CACHE_HOME="$(xdg-user-dir CACHE)"

export HISTFILE="$XDG_STATE_HOME/bash/history"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"
export PASSWORD_STORE_DIR="$HOME/.password-store"
export WINEPREFIX="$XDG_DATA_HOME/wine"

export PATH="$PATH":"$HOME/.local/bin"

alias hx=$hx

zoxide init fish | source
direnv hook fish | source
set -g direnv_fish_mode disable_arrow 
