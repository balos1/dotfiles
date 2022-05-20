#!/usr/bin/env zsh

#------------------------------------- PRE -----------------------------------#
# Any thing that needs to be loaded prior to configuring your shell           #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# oh-my-zsh
source ~/.zsh/oh-my-zsh.config

# tcl modules
source /usr/local/Modules/init/zsh

#----------------------------------- CONFIG ----------------------------------#
# Configuration of the environment goes here.                                 #
#-----------------------------------------------------------------------------#


# ------------- ENV variables ---------------#
export PREPATH=""
export POSTPATH=""

# conda wants to be prepended to path
export CONDA_ROOT="/usr/local/anaconda3"
PREPATH="$CONDA_ROOT/bin:$PREPATH"

# cuda
export CUDA_HOME="/usr/local/cuda"
POSTPATH="$POSTPATH:$CUDA_HOME"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# POSTPATH="$POSTPATH:$PYENV_ROOT/bin"

export MKL_ROOT=/opt/intel/
export SPACK_ROOT="$HOME/spack.git"

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

# gcloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/cbalos/google-cloud-sdk/path.zsh.inc' ]; then source '/home/cbalos/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/cbalos/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/cbalos/google-cloud-sdk/completion.zsh.inc'; fi

# aliases
alias git="hub"
alias xclip="xclip -selection c"
alias matlab='LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.25 /usr/local/MATLAB/R2017b/bin/matlab -desktop'
alias zshconfig="vim ~/.zsh/ubuntu-desktop.sh"
