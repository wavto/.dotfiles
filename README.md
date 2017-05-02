# .dotfiles

This is my dotfiles repository. The repository has to be installed directly within the $HOME directory of a macOS environment.

---

## Installation

Clone the .dotfiles as bare repository within your $HOME directory

	git clone --bare git@github.com:avanthay/.dotfiles ~/.dotfiles

Create the alias `dot` to use instead of git for handling with your .dotfiles

	alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

**Backup the existing files** which will be overridden with the ones of this repo, checkout the current version and set the upsteam for the local branch `master`

	dot checkout -t origin/master

Update the local repository config to hide untracked files when doing `dot status`

	dot config status.showUntrackedFiles no

Initialize and update the submodules

	dot submodule update --init --recursive

Set your git credentials by copying `.gitconfig.local.sample` to `.gitconfig.local` and editing it

---

## Setup a new mac

If you are setting up a new mac run this two commands first

	sudo softwareupdate -i -a
	xcode-select --install

generate new ssh-keys

	ssh-keygen -t rsa -b 4096 -C "YOUR EMAIL"

add your key to the ssh-agent

	ssh-add ~/.ssh/{your private key}

copy the key and add it to your github account.

	pbcopy < ~/.ssh/id_rsa.pub

Then follow the [installation instruction above](#installation) and define your computer name
	
	export COMPUTER_NAME=my-awesome-computer-name

run the installation script

	./.install/.install

or run each script in the `.install/` directory manually

and restart your mac.

---

## Mac App Store

The following apps have to be installed manually through from the App Store

* Microsoft Remote Desktop
* Wunderlist
* PasteBox – Clipboard Manager

---

## Configure Sublime Text settings

First install the package control as [described here](https://packagecontrol.io/installation) by pasting the following into the sublime console

	import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

Then run the following commands to remove the settings directory and symlink it to ´~/.sublime` instead

	rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
	ln -s ~/.sublime/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

---

## Install LaTex

Homebrew downloads the basictex installer to `/usr/local/Caskroom/basictex/{version}/mactex-basictex-{version}.pkg`. Run it with the `open` command and follow the screen instructions.

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
