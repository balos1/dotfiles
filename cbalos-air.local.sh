#!/usr/bin/env zsh

#------------------------------------- PRE -----------------------------------#
# Any thing that needs to be loaded prior to configuring your shell           #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# oh-my-zsh
source ~/.zsh/oh-my-zsh.config

# Tcl modules
source /usr/local/opt/modules/init/zsh


#----------------------------------- CONFIG ----------------------------------#
# Configuration of the environment goes here.                                 #
#-----------------------------------------------------------------------------#


# ------------- ENV variables ---------------#
export PREPATH=""
export POSTPATH=""

# conda wants to be prepended to path
export CONDA_ROOT="/usr/local/anaconda3"
PREPATH="$CONDA_ROOT/bin:$PREPATH"

# homebrew wants this prepended to path
export BREW="/usr/local/sbin:/Users/cbalos/.local/bin"
PREPATH="$BREW:$PREPATH"

# MacTex
export MAC_TEX=/Library/TeX/texbin
POSTPATH="$POSTPATH:$MAC_TEX"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# POSTPATH="$POSTPATH:$PYENV_ROOT/bin"

export SPACK_ROOT="/Users/cbalos/spack.git"
export ZPLUG_HOME=/usr/local/opt/zplug

# ------------- EDIT PATH -------------------#
PATH="$PREPATH:$PATH:$POSTPATH"

#------------------------------------- POST ----------------------------------#
# Any thing that needs to be loaded after configuring your shell              #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# setup spack
source $SPACK_ROOT/share/spack/setup-env.sh

# init pyenv - should go towards the end of your bashrc
# if command -v pyenv 1>/dev/null 2>&1; then
#     eval "$(pyenv init -)"
# fi

# setup ZPLUG
source $ZPLUG_HOME/init.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cbalos/.local/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/cbalos/.local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cbalos/.local/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/cbalos/.local/google-cloud-sdk/completion.zsh.inc'; fi

# aliases
alias zshconfig="vim ~/.zsh/cbalos-air.local.sh"
alias git="hub"

