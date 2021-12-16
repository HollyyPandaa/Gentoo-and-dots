# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


## Prompt ##

# Starship prompt
eval "$(starship init bash)"


## Alias ## 

# Betterr ls replacement
alias ls="exa -a -l -h"

 
## Path for various programs ##

# Path for Rofi scripts
echo "PATH=$PATH:~/.config/rofi/bin" >> ~/.profile

# Path for jetbrains toolbox
PATH="/home/hollyypandaa/JetBrains/IntelliJ/bin:${PATH}"
export PATH

# Path for xmonad 
PATH="/home/hollyypandaa/.cabal/bin:${PATH}"
export PATH

# Path for doom emacs
PATH="~/.emacs.d/bin:${PATH}"
export PATH

# Path for ghcup
[ -f "/home/hollyypandaa/.ghcup/env" ] && source "/home/hollyypandaa/.ghcup/env" # ghcup-env

## Fun stuff (collection of colorscriptts from distrotube gitlab) ##
colorscript random
