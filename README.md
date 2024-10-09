# .dotfiles
My dot-files mostly for mac. its a tmux/zsh/vim setup... you may love it or hate it.


Right now it expects to be installed in `$HOME/dotfiles` so `cd $HOME && git clone https://github.com/kiddkevin00/.dotfiles.git dotfiles`

1. `$ cd $HOME/dotfiles && ./script/install` - installs common tools zsh, oh-my-zsh, homebrew... (might need to run `$ eval "$(/opt/homebrew/bin/brew shellenv)"` to enable brew temporarily)
2. `$ cd $HOME/dotfiles && sudo ./script/bootstrap` - symlinks all `{filename}.symlink` to `$HOME/.{filename}` files (if no such file or dir, run `$ sudo mkdir ~/.oh-my-zsh/custom/scripts`. If failed on permission, run `$ sudo chmod 777 ~/.oh-my-zsh/custom` to allow replacements)
3. Install yarn via `$ brew install yarn && brew uninstall --ignore-dependencies node
4. Make sure the bin folder is added to path's and run `dot` periodically to update apps (brew, oh-my-zsh...) so that there is only one node installed (the one in `nvm`)

## Some additional steps required
1. Able to launch sublime from command line: `$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`
2. If having issue related to latest tmux version, install v3.1c via `$ brew tap-new $USER/local-tmux --no-git && brew extract --version=3.1c tmux $USER/local-tmux && brew install tmux@3.1c && brew pin tmux@3.1c`
3. If having issue related to latest mux (tmuxinator) version, install v2.0.2: `$ gem install mux -v 2.0.2`
4. Might need to resolve openssl version conflict: `$ brew update && brew upgrade && brew uninstall --ignore-dependencies openssl && brew install https://github.com/tebelorg/Tump/releases/download/v1.0.0/openssl.rb`
5. Might need to run `$ brew install vim` to resolve vim outdated configuration issue
6. If there is missing plugin(s), run `$ vim +PluginInstall +qall`
7. Check "Enable mouse reporting" (and "Report mouse wheel events") boxes in iTerm2/Preference/Profile/Terminal tab to enable mouse scrolling and clicking to switch pane in tmux
8. Copy `~/.tool-versions` and run `brew install asdf && asdf plugin-add nodejs && asdf plugin-add python && asdf plugin-add java && asdf install` (Might need to run `env /usr/bin/arch -x86_64 /bin/zsh --login` first)
