export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
alias la='ls -la'

export PS1='\u@\h:\w$(__git_ps1 " \[\e[1m\](%s)\[\e[0m\]")\$ '

[[ -s ~/.bashrc ]] && source ~/.bashrc

