#!/usr/bin/env fish

# Set VIM as our default editor
set -U EDITOR 'vim'
set -U VISUAL "$EDITOR"

# LS colors and misc commands
#set -U LSCOLORS 'gaxxxxxxcxxxxxxxxxxxxx'

# Prevent less from clearing the screen while still showing colors.
set -U LESS 'eFRX'
