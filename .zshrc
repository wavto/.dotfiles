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
plugins=(git chucknorris brew brew-cask composer sudo symfony2 node npm wp-cli)

# set path
export PATH=/usr/local/texbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.bin:/Library/TeX/texbin

# source external config
source $ZSH/oh-my-zsh.sh

# source the shell dotfiles
for file in ~/.{alias,function}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# add drupal completion
source "$HOME/.console/console.rc" 2>/dev/null

# add drush completion
# autoload bashcompinit
# bashcompinit
# source /usr/local/Cellar/drush/8.1.3/etc/bash_completion.d/drush

# add ruby stuff
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

