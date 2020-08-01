# .dotfiles
My dot-files mostly for mac. its a tmux/vim setup.. you may love it or hate it.


Right now it expects to be installed in `$HOME/dotfiles` so `cd $HOME && git clone https://github.com/kiddkevin00/.dotfiles.git dotfiles`

1. `cd $HOME/dotfiles && ./script/install` - installs common tools `zash, oh-my-zsh, homebrew...`
2. `cd $HOME/dotfiles && ./script/bootstrap` - symlinks all files `**.symlink to $HOME/.{filename}`
3. adds `sciprt/export.sh` to .zshrc then loads all files ***/**.export.zsh on startup as well as ****/path.zsh and ***/completion.zsh
4. make sure the bin folder is added to path's and run `dot` periodically to update apps (brew, oh-my-zsh...)

## Some additional steps required
1. Install ruby to override the system one: `$ brew install rbenv && rbenv install 2.6.3 && rbenv global 2.6.3`
2. Override the system's python: `$ cd /usr/local/bin/ && ln -s python3 python`
3. Able to launch sublime from command line: `$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`
4. If having issue related to latest tmux version: `$ brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/b3bd700d9fc53fa153c884b0ea613822de1f375c/Formula/tmux.rb && ln -s /usr/local/opt/libevent/lib/libevent.dylib /usr/local/opt/libevent/lib/libevent-2.1.6.dylib && brew pin tmux`
5. Might need to resolve openssl version conflict: `$ brew update && brew upgrade && brew uninstall --ignore-dependencies openssl && brew install https://github.com/tebelorg/Tump/releases/download/v1.0.0/openssl.rb`
6. Might need to run `$ brew install vim` to resolve vim outdated configuration issue
7. Check "Enable mouse reporting" (and "Report mouse wheel events") boxes in iTerm2/Preference/Profile/Terminal to enable mouse scrolling and clicking to switch pane in tmux
