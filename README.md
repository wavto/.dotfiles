# .dotfiles

This is my dotfile repository. The repository is made to be installed within the $HOME directory.

## Installation

Initialize your $HOME directory to be a new git repository, after them add the remote

	git init
	git remote add origin git@github.com:avanthay/.dotfiles
	git fetch

Backup the existing files which will be overridden with the ones of this repo, checkout the current version and set the upsteam for the local branch `master`

	git checkout -t origin/master

Initialize and update the submodules

	git submodule update --init --recursive

Update the local repository config to hide untracked files when doing `git status`

	git config status.showUntrackedFiles no


---

## Old idea:

Clone this repo as a git bare repository within your home folder.

	cd $HOME
	git clone --bare git@github.com:avanthay/.dotfiles .dotfiles

Checkout repository into home with `--git-dir` and `--work-tree` options since the alias is not set untli now

	git --git-dir=./.dotfiles --work-tree=. checkout

Update the git submodules

	git -C ./ --git-dir=./.dotfiles --work-tree=. submodule init