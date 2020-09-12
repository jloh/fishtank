#!/usr/bin/env fish

# Set VIM as our default editor
set -Ux EDITOR 'vim'
set -Ux VISUAL "$EDITOR"

# LS colors and misc commands
#set -U LSCOLORS 'gaxxxxxxcxxxxxxxxxxxxx'

# Prevent less from clearing the screen while still showing colors.
set -Ux LESS 'eFRX'

# Golang path
set -Ux GOPATH "$HOME/code/go"

# Starship prompt
set -Ux STARSHIP_CONFIG "$HOME/.dotfiles/config/starship.toml"
