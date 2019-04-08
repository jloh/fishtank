# https://twitter.com/roelvangils/status/1113074439976075264
function npm_install --description "Installs node modules and excludes from Spotlight"
  if test -f yarn.lock
    yarn install $argv
  else
    mkdir -p node_modules
    touch node_modules/.metadata_never_index
    npm install $argv
  end
end
