#!/bin/bash

eval "$(/opt/homebrew/bin/brew shellenv)"

shopt -s histappend
shopt -s cmdhist
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
export HISTSIZE=10000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:[ ]*:exit:ls:la:bg:fg:history:clear"
export HISTTIMEFORMAT='%FT%T '
export CDPATH=".:~:~/src"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TZ=Europe/Madrid

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# [[ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]] && . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'

# export BREW_SBIN=/usr/local/sbin
# export GNU_BIN=/usr/local/opt/gnu-tar/libexec/gnubin
# export YARN_BIN="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"
# export RUST_BIN="$HOME/.cargo/bin"
# export BUN_INSTALL="$HOME/.bun"
# export PATH=~/.bin:$GNU_BIN:$BREW_SBIN:$YARN_BIN:$RUST_BIN:$BUN_INSTALL/bin:$PATH
export PATH=~/.bin:$PATH

alias la='ls -lah'
alias vim='nvim'

# export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

export VPN_USERNAME=luis.belloch@flywire.com
#export http_proxy=http://user:password@127.0.0.1:3128
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && . "$NVM_DIR/bash_completion"

# export SDKMAN_DIR="/Users/luis.belloch/.sdkman"
# [[ -s "/Users/luis.belloch/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/luis.belloch/.sdkman/bin/sdkman-init.sh"

# [[ -f '/usr/local/opt/google-cloud-sdk/path.bash.inc' ]] && . '/usr/local/opt/google-cloud-sdk/path.bash.inc'
# [[ -f '/usr/local/opt/google-cloud-sdk/completion.bash.inc' ]] && . '/usr/local/opt/google-cloud-sdk/completion.bash.inc'

eval "$(fzf --bash)"
eval "$(rbenv init -)"
eval "$(direnv hook bash)"
eval "$(starship init bash)"

