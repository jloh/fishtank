# Default fish file

# Source local config
# These are sourced second so its possible to overwrite defaults
for file in (ls $HOME/.config/fish/local/*.fish)
	source $file
end

# Jump!
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

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

  # Ruby env stuff
  abbr --add --global srbenv 'source (rbenv init -|psub)'

end
