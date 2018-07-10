#!/bin/bash

#[[ -s "/Users/luis/.gvm/bin/gvm-init.sh" ]] && source "/Users/luis/.gvm/bin/gvm-init.sh"

eval "$(direnv hook bash)"

# export GOROOT=/usr/local/go
export JAVA_HOME=$(/usr/libexec/java_home)
export YARN_GLOBAL_BIN="$(yarn global bin)"
export ANACONDA_BIN=$HOME/anaconda3/bin
export CARGO_BIN=$HOME/.cargo/bin
export PATH=~/.bin:$YARN_GLOBAL_BIN:$CARGO_BIN:$PATH

# Enable ANACONDA python
#export PATH=~/.bin:$ANACONDA_BIN:$YARN_GLOBAL_BIN:$CARGO_BIN:$PATH

#export http_proxy=http://user:password@127.0.0.1:3128
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

#export NVM_DIR="$HOME/.nvm"

