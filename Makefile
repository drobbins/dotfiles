.PHONY: all bash hydrogen vim

all : bash vim

hydrogen : bash vim
	-ln -sf `pwd`/npm/hydrogen ~/.npmrc

bash :
	-ln -sf `pwd`/bash/.aliases ~/.aliases
	-ln -sf `pwd`/bash/.bashrc ~/.bashrc
	-ln -sf `pwd`/bash/.bash_profile ~/.bash_profile

vim :
	-ln -sf `pwd`/vim ~/.vim
	-ln -sf `pwd`/vim/vimrc ~/.vimrc
