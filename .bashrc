#!/bin/bash

shopt -s histappend
shopt -s cmdhist
# export PROMPT_COMMAND='history -a'
export HISTSIZE=10000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:[ ]*:exit:ls:la:bg:fg:history:clear"
export HISTTIMEFORMAT='%FT%T '
export CDPATH=".:~:~/src:~/src/code/platform/apps:~/src/master"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TZ=Europe/Madrid

#[[ -s "/Users/luis/.gvm/bin/gvm-init.sh" ]] && source "/Users/luis/.gvm/bin/gvm-init.sh"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

eval "$(rbenv init -)"
eval "$(direnv hook bash)"

# export GOROOT=/usr/local/go
# export JAVA_HOME=$(/usr/libexec/java_home)
export YARN_GLOBAL_BIN="$(yarn global bin)"
# export ANACONDA_BIN=$HOME/anaconda3/bin
# export CARGO_BIN=$HOME/.cargo/bin
# export BREW_SBIN=/usr/local/sbin
export BREW_SBIN=/usr/local/sbin
export PATH=~/.bin:$YARN_GLOBAL_BIN:$BREW_SBIN:$PATH

export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

export PATH="/Users/luis.belloch/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#export http_proxy=http://user:password@127.0.0.1:3128
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash
[[ -f ~/.fzf.opts ]] && source ~/.fzf.opts

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export SDKMAN_DIR="/Users/luis.belloch/.sdkman"
[[ -s "/Users/luis.belloch/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/luis.belloch/.sdkman/bin/sdkman-init.sh"

[[ -f '/usr/local/opt/google-cloud-sdk/path.bash.inc' ]] &&. '/usr/local/opt/google-cloud-sdk/path.bash.inc'
[[ -f '/usr/local/opt/google-cloud-sdk/completion.bash.inc' ]] && . '/usr/local/opt/google-cloud-sdk/completion.bash.inc'

#export JENV_ROOT=/usr/local/opt/jenv
#eval "$(jenv init -)"

eval "$(starship init bash)"

