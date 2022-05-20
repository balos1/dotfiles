#------------------------------------- PRE -----------------------------------#
# Any thing that needs to be loaded prior to configuring your shell           #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

#----------------------------------- CONFIG ----------------------------------#
# Configuration of the environment goes here.                                 #
#-----------------------------------------------------------------------------#

# ------------- ENV variables ---------------#
export PREPATH=""
export POSTPATH=""
export LSB_DEFAULT_USERGROUP=sundials
#export SPACK_ROOT="$HOME/spack"

# ------------- EDIT PATH -------------------#

PATH="$PREPATH:$PATH:$POSTPATH"

#------------------------------------- POST ----------------------------------#
# Any thing that needs to be loaded after configuring your shell              #
# should go in this block.                                                    #
#-----------------------------------------------------------------------------#

# setup spack
#source $SPACK_ROOT/share/spack/setup-env.sh

# aliases
alias py=python3
alias vimbigfile="vim -u NONE"

#-------------------------------------------------------------------------------#
#                                   Functions                                   #
#-------------------------------------------------------------------------------#

