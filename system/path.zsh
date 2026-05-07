typeset -U manpath

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  manpath=(/usr/share/man "$HOMEBREW_PREFIX/man" "$HOMEBREW_PREFIX/share/man" $manpath)
  unset HOMEBREW_PREFIX
else
  manpath=(/usr/share/man $manpath)
fi

export MANPATH
