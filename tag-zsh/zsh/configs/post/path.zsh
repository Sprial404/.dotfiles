# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

if command -v ruby > /dev/null
then
    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    PATH="$PATH:$GEM_HOME/bin"
fi

