# Default fish file

# Source everything in the source folder
for file in (ls $HOME/.config/fish/source/*.fish)
	source $file
end

# Source local config
# These are sourced second so its possible to overwrite defaults
for file in (ls $HOME/.config/fish/local/*.fish)
	source $file
end

# Add ~/bin to our path
set -g fish_user_paths ~/bin /usr/local/sbin $fish_user_paths

# Jump!
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
