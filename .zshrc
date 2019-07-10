# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh configuration
ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT=true
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
LANG=fr_CH.UTF-8

# personal configuration
DEFAULT_USER=dave
COMPOSER_DISABLE_XDEBUG_WARN=1

# oh-my-zsh plugins
plugins=(git chucknorris brew brew-cask composer sudo symfony2 node npm wp-cli meteor docker encode64 zsh_reload)

# set path
export PATH=/usr/local/php5/bin:/usr/local/texbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.bin:/Library/TeX/texbin:$HOME/.composer/vendor/bin

# source external config
source $ZSH/oh-my-zsh.sh

# source the shell dotfiles
for file in ~/.{alias,function,completion/*}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# add ruby stuff
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nvm needs to be loaded manually with the nvm() function
# improving the terminal performance
