#!/bin/bash
set -eu -o pipefail
git submodule update --init --recursive
readonly repo=$(pwd)
pushd ~ > /dev/null
ln -f -s $repo/.bin
ln -f -s $repo/.bash_profile
ln -f -s $repo/.bashrc
ln -f -s $repo/.vim
ln -f -s $repo/.vimrc
ln -f -s $repo/.tmux.conf
ln -f -s $repo/.config/fish/config.fish
popd > /dev/null

git config --global alias.tree "log --oneline --decorate --graph"

