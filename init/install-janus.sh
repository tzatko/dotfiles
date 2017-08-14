#!/bin/bash

# Taken from https://raw.githubusercontent.com/carlhuda/janus/master/bootstrap.sh
# https://github.com/carlhuda/janus/blob/master/bootstrap.sh

function die()
{
    echo "${@}"
    exit 1
}

# Add .old to any existing Vim file in the home directory
for filepath in "${HOME}/.vim" "${HOME}/.vimrc" "${HOME}/.gvimrc"; do
  if [ -e $filepath ]; then
    mv "${filepath}" "${filepath}.old" || die "Could not move ${filepath} to ${filepath}.old"
    echo "${filepath} has been renamed to ${filepath}.old"
  fi
done

# Clone Janus into .vim
git clone https://github.com/carlhuda/janus.git "${HOME}/.vim" \
  || die "Could not clone the repository to ${HOME}/.vim"

# Run rake inside .vim
cd "${HOME}/.vim" || die "Could not go into the ${HOME}/.vim"
rake || die "Rake failed."

mkdir -p ${HOME}/.janus
cd ${HOME}/.janus
git clone https://github.com/tomlion/vim-solidity
git clone https://github.com/posva/vim-vue.git
git clone https://github.com/Valloric/YouCompleteMe
git clone https://github.com/elentok/plaintasks.vim
cd YouCompleteMe
git submodule update --init --recursive
./install.py --gocode-completer --tern-completer

