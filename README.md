# .dotfiles

This is my dotfiles repository. The repository needs to be installed directly within the $HOME directory of a macOS environment.

---

## Install

### .dotfiles

Requires SSH to work, see [SSH](#SSH).

Clone the .dotfiles as bare repository within your $HOME directory

	git clone --bare git@github.com:avanthay/.dotfiles ~/.dotfiles

Create the alias `dot` to use instead of git for handling with your .dotfiles

	alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

**Backup the existing files** which will be overridden with the ones of this repo, checkout the current version and set the upsteam for the local branch `master`

	dot checkout

Update the local repository config to hide untracked files when doing `dot status`

	dot config status.showUntrackedFiles no

Initialize and update the submodules

	dot submodule update --init --recursive

Set your git credentials by copying `.gitconfig.local.sample` to `.gitconfig.local` and editing it

It may be a good idea to reboot your mac.

### Setup a new Mac

Set the hostname in `System preferences` > `Sharing`

Disable Guest Account in `System preferences` > `Users and Groups`

Enable harddisk encryption and the Firewall in `System preferences` > `Security and Confidentiality`

Check the remaining `System preferences`, maybe check the screenshots at `.dot/config/macOS`
	
Enable developer tools

	sudo softwareupdate -i -a
	xcode-select --install

Disable accented characters when holding down a key with `defaults write -g ApplePressAndHoldEnabled -bool false`

### SSH

Install your SSH key pair into `~/.ssh`

Start the SSH agent in background

	eval "$(ssh-agent -s)"

Add your key to the ssh-agent

	ssh-add -K ~/.ssh/{your private key}

### Homebrew

Install Homebrew

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install Homebrew Taps

	brew tap homebrew/cask
	brew tap homebrew/cask-versions
	brew tap homebrew/completions
	brew tap homebrew/core
	brew tap homebrew/dupes
	brew tap homebrew/services
	brew tap homebrew/versions
	
Update & upgrade Homebrew

	brew update
	brew upgrade

### iTerm2

Install iTerm2

	brew cask install iterm2

Set custom preferences folder

	defaults write com.googlecode.iterm2 PrefsCustomFolder -string ~/.iterm/

Open the iTerm2 settings and check `Load preferences from a custom...`, make sure to uncheck `Save changes ... when iTerm2 quits`.

Quit iTerm2 and restart it. You may need to close the window / quit iTerm2 multiple times until the oh-my-zsh theme gets displayed correctly.

### Oh-My-ZSH

Oh-My-ZSH gets installed with `.dotfiles` (submodule)

Install ZSH autocompletion

	brew install zsh-completions

Change default shell to zsh

	chsh -s /bin/zsh

Install powerline fonts needed for the oh-my-zsh theme agnoster

	git clone git@github.com:powerline/fonts /tmp/fonts
	/tmp/fonts/install.sh
	rm -r /tmp/fonts

### Sublime Text

Install Sublime Text

	brew cask install sublime-text

Install the package control as [described here](https://packagecontrol.io/installation) by pasting the code there into the sublime console.

Run the following commands to remove the settings directory and symlink it to ´~/.sublime` instead

	rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
	ln -s ~/.sublime/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

You may want to install Pandoc for Markup conversion

### Pandoc

Install Pandoc (needed for the Sublime Text extention)

	brew install pandoc

For pandoc to work, you need to install LaTex

### LaTex

Install BasicTex

	brew cask install basictex

### Spectacle

Install

	brew cask install spectacle

Install shortcuts

	cp ~/.dot/config/Spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json

### Firefox

Install Firefox (develper edition + normal)

	brew cask install firefoxdeveloperedition
	brew cask install firefox

Link the `user.js` file to the Firefox profile directories. Replace `{profile}` with your profile directory and repeat for each profile.

	ln -s ~/.dot/config/Firefox/user.js ~/Library/Application\ Support/Firefox/Profiles/{profile}/user.js

### Mac App Store

Installed those Apps manually from the App Store

* Microsoft Remote Desktop
* Wunderlist
* PasteBox – Clipboard Manager
* Blinks

### Quicklook

Install

	brew cask install qlmarkdown quicklook-csv quicklook-json

### PHP

Add the Homebrew tap

	brew tap homebrew/php
	brew tap kyslik/php

Install the PHP packages

	brew install composer
	brew install php70
	brew install php70-apcu
	brew install php70-opcache
	brew install php70-xdebug
	brew install php70-yaml

To enable debugging add the following line to the file /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini

	xdebug.remote_enable=1

---

## Usage

Feel free to use my dotfile repository, ideally you go throught the settings instead of just copying my repos as it is. The usage of this repository is at your own risk!

---

## Credits

* Nicola Paolucci and his article [The best way to store your dotfiles: A bare Git repository](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
* Mathias Bynens and his [dotfile repository](https://github.com/mathiasbynens/dotfiles)
* Chris Arcand and his article [Sublime Text Settings and Dotfiles](https://chrisarcand.com/sublime-text-settings-and-dotfiles/)
* Kevin Suttle and his [great macOS Defaults documentation](https://github.com/kevinSuttle/macOS-Defaults)
* Lars Kappert and his [dotfile repository](https://github.com/webpro/dotfiles)
* Henrik Gustafsson and his [answer to a post about submodules on stackoverflow](https://stackoverflow.com/questions/1030169/easy-way-pull-latest-of-all-submodules#answer-1032653)
* Simon Owen and his article [Setting Up a Mac Dev Machine From Zero to Hero With Dotfiles](https://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449)
