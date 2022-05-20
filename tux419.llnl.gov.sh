#!/usr/bin/bash

#------------------------------------- PRE -----------------------------------#
# Any thing that needs to be loaded prior to configuring your shell           #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# oh-my-bash
source ~/.bash/oh-my-bash.config

#----------------------------------- CONFIG ----------------------------------#
# Configuration of the environment goes here.                                 #
#-----------------------------------------------------------------------------#


# ------------- ENV variables ---------------#
export PREPATH=""
export POSTPATH=""

# conda wants to be prepended to path
# export CONDA_ROOT="/anaconda3"
# PREPATH="$CONDA_ROOT/bin:$PREPATH"

export cascnfs="/usr/casc/sundials"
export LM_LICENSE_FILE="$HOME/tvlicense.dat"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export SPACK_ROOT="$HOME/spack"
export SUNDIALS="$HOME/Workspace/SUNDIALS/"
export TEXLIVE="/usr/local/texlive/"
export VISUAL='vim'

PREPATH="/home/balos1/.local/bin:$PREPATH"

# ------------- EDIT PATH -------------------#

PATH="$PREPATH:$PATH:$POSTPATH"
MANPATH="/usr/local/man:/usr/local/texlive/2018/texmf-dist/doc/man:$MANPATH"


#------------------------------------- POST ----------------------------------#
# Any thing that needs to be loaded after configuring your shell              #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/balos1/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/balos1/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/balos1/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/balos1/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# setup spack
source $SPACK_ROOT/share/spack/setup-env.sh

# --------------- MODULES -------------------#
module use $HOME/.local/etc/modulefiles
source <( $SPACK_ROOT/bin/spack module tcl loads git cmake@3.17.4 gcc@9.3.0)
module load cuda/11.4

#-------------------------------------------------------------------------------#
#                                   aliases                                     #
#-------------------------------------------------------------------------------#

source ~/.bash_aliases
alias open='gio open'
alias py=python3

#-------------------------------------------------------------------------------#
#                                   functions                                   #
#-------------------------------------------------------------------------------#

function theme() {
  wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh
}

