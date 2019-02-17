#!/bin/bash

shopt -s histappend
shopt -s cmdhist
# export PROMPT_COMMAND='history -a'
export HISTSIZE=10000
export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:[ ]*:exit:ls:la:bg:fg:history:clear"
export HISTTIMEFORMAT='%FT%T '
export CDPATH=".:~:~/src:~/src/flowable-platform"

#[[ -s "/Users/luis/.gvm/bin/gvm-init.sh" ]] && source "/Users/luis/.gvm/bin/gvm-init.sh"

source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
source /usr/local/etc/bash_completion.d/aws_bash_completer
source /usr/local/etc/bash_completion.d/kubectl

if [ -f '/usr/local/opt/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/opt/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/usr/local/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/opt/google-cloud-sdk/completion.bash.inc'; fi

eval "$(direnv hook bash)"

# export GOROOT=/usr/local/go
# export JAVA_HOME=$(/usr/libexec/java_home)
export YARN_GLOBAL_BIN="$(yarn global bin)"
export ANACONDA_BIN=$HOME/anaconda3/bin
export CARGO_BIN=$HOME/.cargo/bin
export BREW_SBIN=/usr/local/sbin
export PATH=~/.bin:$YARN_GLOBAL_BIN:$CARGO_BIN:$BREW_SBIN:$PATH

# Enable ANACONDA python
#export PATH=~/.bin:$ANACONDA_BIN:$YARN_GLOBAL_BIN:$CARGO_BIN:$PATH

#export http_proxy=http://user:password@127.0.0.1:3128
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash
[[ -f ~/.fzf.opts ]] && source ~/.fzf.opts

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR="/Users/luis/.sdkman"
[[ -s "/Users/luis/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/luis/.sdkman/bin/sdkman-init.sh"

#export JENV_ROOT=/usr/local/opt/jenv
#eval "$(jenv init -)"

