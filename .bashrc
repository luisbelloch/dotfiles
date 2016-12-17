#!/bin/bash

#[[ -s "/Users/luis/.gvm/bin/gvm-init.sh" ]] && source "/Users/luis/.gvm/bin/gvm-init.sh"

eval "$(direnv hook bash)"

export GOROOT=/usr/local/go
export PATH=~/.bin:$PATH

#export http_proxy=http://username:password@proxy:3128
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
