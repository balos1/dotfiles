#!/usr/bin/bash

#------------------------------------- PRE -----------------------------------#
# Any thing that needs to be loaded prior to configuring your shell           #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# only load oh-my-bash for interfactive shells
if [[ $- == *i* ]]; then
  # oh-my-bash
  source ~/.bash/oh-my-bash.config
fi

#----------------------------------- CONFIG ----------------------------------#
# Configuration of the environment goes here.                                 #
#-----------------------------------------------------------------------------#

# ------------- ENV variables ---------------#
export PREPATH=""
export POSTPATH="~/.local/bin"
export LSB_DEFAULT_USERGROUP=sundials
export WORKSPACE=/usr/workspace/balos1
export SPACK_ROOT="$WORKSPACE/spack"
#export SPACK_ROOT="$WORKSPACE/xsdk/spack"
#export SPACK_ROOT="$WORKSPACE/spack-dev"

# ------------- EDIT PATH -------------------#

PATH="$PREPATH:$PATH:$POSTPATH"

#------------------------------------- POST ----------------------------------#
# Any thing that needs to be loaded after configuring your shell              #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# load LC provided modules
module load vim

# setup spack
source $SPACK_ROOT/share/spack/setup-env.sh

# aliases
alias py=python3
alias vimbigfile="vim -u NONE"
alias bashconfig="vim ~/.bash/lc.sh"

#-------------------------------------------------------------------------------#
#                                   Functions                                   #
#-------------------------------------------------------------------------------#

