# Default fish file

# Source local config
# These are sourced second so its possible to overwrite defaults
for file in (ls $HOME/.config/fish/local/*.fish)
	source $file
end

# Add things to our path
# Order is important here, things get added to the _start_
# so we set `~/bin` at the end so it trumps everything
# Homebrew
eval (/usr/local/bin/brew shellenv)

fish_add_path ~/.cargo/bin
fish_add_path ~/.yarn/bin
fish_add_path ~/code/go/bin
fish_add_path ~/.config/yarn/global/node_modules/.bin
fish_add_path ~/bin

# Direnv
status --is-interactive; and eval (direnv hook fish)

# If there is a default nvmrc run that
[ -f $HOME/.nvmrc ]; and nvm use (cat ~/.nvmrc) > /dev/null

## Abbreviations
# Doing this here is slightly faster
if status --is-interactive
  # Quick and dirty commands to change dir
  abbr --add --global .. 'cd ..'
  abbr --add --global ... 'cd ../../'
  abbr --add --global .... 'cd ../../../'

  # Git commands
  abbr --add --global gp 'git push'
  abbr --add --global ga 'git add'
  abbr --add --global gco 'git checkout'
  abbr --add --global gu 'git pull'
  abbr --add --global gs 'git status'
  abbr --add --global gd 'git diff'
  abbr --add --global gdc 'git diff --cached'
  abbr --add --global gm 'git commit -m'
  abbr --add --global gms 'git commit -S -m'
  abbr --add --global gr 'git restore'
  abbr --add --global grs 'git restore --staged'
  abbr --add --global j 'z'

  # Ruby env stuff
  abbr --add --global srbenv 'source (rbenv init -|psub)'

  # Zoxide
  if type -q zoxide
    zoxide init fish | source
  end

  # Prompt
  if type -q starship
    starship init fish | source
  end
end
