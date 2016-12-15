.PHONY: all bash hydrogen vim

all : bash vim

bash : ~/Code/z/z.sh
	-ln -sf `pwd`/bash/.aliases ~/.aliases
	-ln -sf `pwd`/bash/.bashrc ~/.bashrc
	-ln -sf `pwd`/bash/.bash_profile ~/.bash_profile

~/Code/z/z.sh :
	git clone https://github.com/rupa/z.git ~/Code/z

vim :
	-ln -sf `pwd`/vim ~/.vim
	-ln -sf `pwd`/vim/vimrc ~/.vimrc
