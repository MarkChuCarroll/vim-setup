#!/bin/bash
dir=$(PWD)
if [ -e ~/.vim ]; then
  mv ~/.vim ~/.vim.old
fi
ln -s $dir/vim ~/.vim
if [ -e ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.old
fi
ln -s $dir/vimrc ~/.vimrc

