#!/usr/bin/env bash

# Create new folder in ~/.vim/pack that contains a start folder and cd into it.
#
# Arguments:
#   package_group, a string folder name to create and change into.
#
# Examples:
#   set_group syntax-highlighting
#
function set_group () {
  package_group=$1
  packagePath="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$packagePath"
  cd "$packagePath" || exit
}

# Clone or update a git repo in the current directory.
#
# Arguments:
#   repo_url, a URL to the git repo.
#
# Examples:
#   package https://github.com/tpope/vim-endwise.git
#
function package () {
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url"
  fi
}

#(
#set_group ruby
#package https://github.com/tpope/vim-rails.git &
#package https://github.com/tpope/vim-rake.git &
#package https://github.com/tpope/vim-bundler.git &
#package https://github.com/tpope/vim-endwise.git &
#wait
#) &

(
set_group python 
package https://github.com/davidhalter/jedi-vim & 
wait
) &

#(
#set_group colorschemes
#package https://github.com/altercation/vim-colors-solarized.git &
#wait
#) &

wait
