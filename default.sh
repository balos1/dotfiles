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

# ------------- EDIT PATH -------------------#

PATH="$PREPATH:$PATH:$POSTPATH"

#------------------------------------- POST ----------------------------------#
# Any thing that needs to be loaded after configuring your shell              #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# aliases
alias bashconfig="vim ~/.bash/default.sh"
