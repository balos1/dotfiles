#!/usr/bin/env bash

if [ ! -d ~/.oh-my-bash ]; then
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
fi

if [ -f $HOME/.bashrc ]; then
    mv --backup=t $HOME/.bashrc $HOME/.bashrc.before.dotfiles
fi

ln -s "${HOME}/.bash/.bashrc" "${HOME}"

echo "Installed your bash configuration... run source ~/.bashrc to load it."
