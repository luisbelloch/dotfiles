#!/bin/bash
set -eu -o pipefail
readonly repo=$(pwd)
pushd ~ > /dev/null
ln -f -s $repo/.bin
ln -f -s $repo/.bash_profile
ln -f -s $repo/.bashrc
ln -f -s $repo/.vim
ln -f -s $repo/.vimrc
popd > /dev/null

