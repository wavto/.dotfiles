# .dotfiles

This is my dotfile repository. The repository is made to be installed within the $HOME directory.

## Installation

Initialize your $HOME directory to be a git repository and add the remote

	git init
	git remote add origin git@github.com:avanthay/.dotfiles
	git fetch

Backup the existing files which will be overridden with the ones of this repo and checkout the current version

	git checkout -t origin/master

Initialize and update the submodules

	git submodule update --init --recursive

---

## Old idea:

Clone this repo as a git bare repository within your home folder.

	cd $HOME
	git clone --bare git@github.com:avanthay/.dotfiles .dotfiles

Checkout repository into home with `--git-dir` and `--work-tree` options since the alias is not set untli now

	git --git-dir=./.dotfiles --work-tree=. checkout

Update the git submodules

	git -C ./ --git-dir=./.dotfiles --work-tree=. submodule init