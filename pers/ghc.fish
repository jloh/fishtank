function ghc -d 'Clones a GitHub repo into the right directory'
  set -l base "$HOME/code/github"
  set -l repo_full $argv
  set -l repo_user (string split / $repo_full)[1]
  set -l repo_repo (string split / $repo_full)[2]
  set -l base_dir "$base/$repo_user"
  mkdir -p $base_dir
  echo "Moving to $base_dir..."
  cd $base/$repo_user
  git clone git@github.com:$repo_user/$repo_repo.git
  cd $repo_user
end
