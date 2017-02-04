# package
include_recipe './cookbooks/vim/default.rb'
include_recipe './cookbooks/zsh/default.rb'
include_recipe './cookbooks/git/default.rb'
include_recipe './cookbooks/tmux/default.rb'
include_recipe './cookbooks/silversearcher-ag/default.rb'

# dotfiles setup
include_recipe './cookbooks/dotfiles/default.rb'

# source
include_recipe './cookbooks/go/default.rb'
include_recipe './cookbooks/ghq/default.rb'
include_recipe './cookbooks/peco/default.rb'
include_recipe './cookbooks/hub/default.rb'
