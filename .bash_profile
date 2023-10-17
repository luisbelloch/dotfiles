export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

[[ -s ~/.bashrc ]] && source ~/.bashrc

