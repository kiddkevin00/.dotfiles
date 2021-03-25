# .dotfiles
My dot-files mostly for mac. its a tmux/vim setup.. you may love it or hate it.


Right now it expects to be installed in `$HOME/dotfiles` so `cd $HOME && git clone https://github.com/kiddkevin00/.dotfiles.git dotfiles`

1. `$ cd $HOME/dotfiles && ./script/install` - installs common tools zash, oh-my-zsh, homebrew...
2. `$ cd $HOME/dotfiles && ./script/bootstrap` - symlinks all `{filename}.symlink` to `$HOME/.{filename}` files (if failed, run `$ chmod 755 ~/.oh-my-zsh/custom` to allow replacements)
3. [Already Included] Add `sciprt/export.sh` to .zshrc to loads all `*.export.zsh`, `path.zsh` and `completion.zsh` files under each subfolders on startup
4. Make sure the bin folder is added to path's and run `dot` periodically to update apps (brew, oh-my-zsh...)
5. Install yarn via `$ brew install yarn && brew uninstall --ignore-dependencies node
` so that there is only one node in nvm

## Some additional steps required
1. Install ruby to override the system one: `$ brew install rbenv && rbenv install 2.6.3 && rbenv global 2.6.3`
2. Override the system's python: `$ cd /usr/local/bin/ && ln -s python3 python`
3. Able to launch sublime from command line: `$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`
4. If having issue related to latest tmux version, install v3.1c
5. If having issue related to latest mux (tmuxinator) version, install v2.0.2: `$ gem install mux -v 2.0.2`
6. Might need to resolve openssl version conflict: `$ brew update && brew upgrade && brew uninstall --ignore-dependencies openssl && brew install https://github.com/tebelorg/Tump/releases/download/v1.0.0/openssl.rb`
7. Might need to run `$ brew install vim` to resolve vim outdated configuration issue
8. Check "Enable mouse reporting" (and "Report mouse wheel events") boxes in iTerm2/Preference/Profile/Terminal tab to enable mouse scrolling and clicking to switch pane in tmux
