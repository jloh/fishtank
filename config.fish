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
set PATH ~/bin /usr/local/sbin $PATH
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jloh/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/jloh/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jloh/node_modules/tabtab/.completions/sls.fish ]; and . /Users/jloh/node_modules/tabtab/.completions/sls.fish
