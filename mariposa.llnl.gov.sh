#!/usr/bin/env zsh

#------------------------------------- PRE -----------------------------------#
# Any thing that needs to be loaded prior to configuring your shell           #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# oh-my-zsh
source ~/.zsh/oh-my-zsh.config

#----------------------------------- CONFIG ----------------------------------#
# Configuration of the environment goes here.                                 #
#-----------------------------------------------------------------------------#


# ------------- ENV variables ---------------#
export PREPATH=""
export POSTPATH=""

# conda wants to be prepended to path
export CONDA_ROOT="//anaconda3"
PREPATH="$CONDA_ROOT/bin:$PREPATH"

# homebrew wants this prepended to path
export BREW="/usr/local/sbin:/Users/cbalos/.local/bin"
PREPATH="$BREW:$PREPATH"

# mactex
export MAC_TEX=/Library/TeX/texbin
POSTPATH="$POSTPATH:$MAC_TEX"

export LM_LICENSE_FILE="$HOME/tvlicense.dat"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export SPACK_ROOT="$HOME/.local/src/spack-testing"
export SUNDIALS="$HOME/Workspace/SUNDIALS/"
export ZPLUG_HOME=/usr/local/opt/zplug


# ------------- EDIT PATH -------------------#
PATH="$PREPATH:$PATH:$POSTPATH"


# --------------- MODULES -------------------#
module load cmake-3.1.3-clang-9.0.0-apple-rdv4fiw
module load gcc-8.1.0-clang-9.0.0-apple-nxjcny6
module load openmpi-3.1.0-gcc-8.1.0-4vohm52


#------------------------------------- POST ----------------------------------#
# Any thing that needs to be loaded after configuring your shell              #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# setup spack
source $SPACK_ROOT/share/spack/setup-env.sh

# setup ZPLUG
source $ZPLUG_HOME/init.zsh


# aliases
alias zshconfig="vim ~/.zsh/$(hostname).sh"

