#!/bin/bash

#[[ -s "/Users/luis/.gvm/bin/gvm-init.sh" ]] && source "/Users/luis/.gvm/bin/gvm-init.sh"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export GOROOT=/usr/local/go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

#export http_proxy=http://username:password@proxy:3128
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
