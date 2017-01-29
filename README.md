# .dotfiles

This is my dotfile repository. The repository is made to be installed directly within the $HOME directory of a mac.

---

## Installation

Initialize your $HOME directory to be a new git repository, after them add the remote

	git init
	git remote add origin git@github.com:avanthay/.dotfiles
	git fetch

**Backup the existing files** which will be overridden with the ones of this repo, checkout the current version and set the upsteam for the local branch `master`

	git checkout -t origin/master

Update the local repository config to hide untracked files when doing `git status`

	git config status.showUntrackedFiles no

Initialize and update the submodules

	git submodule update --init --recursive

---

## Setup a new mac

If you are setting up a new mac run the installation script and restart your computer

	./.install/.install


---

Feel free to use my dotfile repository, ideally you go throught the settings instead of just copying my repos as it is. The usage of this repository is at your own risk!