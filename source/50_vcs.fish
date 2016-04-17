# Git shortcuts

#function ga() { git add "${@:-.}"; } # Add all files by default
alias ga 'git add'

function gp --description 'Run git push in the current directory'
	command git push $argv
end

abbr -a gp 'git push'
abbr -a gco 'git checkout'
abbr -a gpa 'git push --all'
abbr -a gu 'git pull'
abbr -a gl 'git log'
abbr -a gg 'git log --decorate --oneline --graph --date-order --all'
abbr -a gs 'git status'
abbr -a gd 'git diff'
abbr -a gdc 'git diff --cached'
abbr -a gm 'git commit -m'
abbr -a gma 'git commit -am'
abbr -a gb 'git branch'
abbr -a gba 'git branch -a'
#function gc() { git checkout "${@:-master}"; } # Checkout master by default
alias gco 'gc'
alias gcb 'gc -b'
alias gbc 'gc -b' # Dyslexia
alias gr 'git remote'
alias grv 'gr -v'
#alias gra='git remote add'
alias grr 'git remote rm'
alias gcl 'git clone'
function gcd
	command git rev-parse 2>/dev/null; and cd ./(git rev-parse --show-cdup)
end

# Current branch or SHA if detached.
alias gbs 'git branch | perl -ne '"'"'/^\* (?:\(detached from (.*)\)|(.*))/ && print "$1$2"'"'"''

# Run commands in each subdirectory.
alias guall 'eachdir git pull'
alias gpall 'eachdir git push'
alias gsall 'eachdir git status'

# SVN shortucts
abbr -a sd 'svn diff'
abbr -a sm 'svn commit -m'
abbr -a st 'svn status'
abbr -a svu 'svn update .'
