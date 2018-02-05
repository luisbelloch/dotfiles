export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
alias la='ls -la'

source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
export PS1='\u@\h:\w$(__git_ps1 " \[\e[1m\](%s)\[\e[0m\]")\$ '

#[[ -s "/Users/luis/.gvm/bin/gvm-init.sh" ]] && source "/Users/luis/.gvm/bin/gvm-init.sh"

#export JENV_ROOT=/usr/local/opt/jenv
#eval "$(jenv init -)"

[[ -s ~/.bashrc ]] && source ~/.bashrc


# added by Anaconda3 4.4.0 installer
#export PATH="/Users/luis/anaconda/bin:$PATH"

