#!/bin/bash
if [ -d ~/.vim ]
then
  if type -t git-up > /dev/null
  then
    (cd ~/.vim && git-up)
  else
    (cd ~/.vim && git pull --rebase)
  fi
else
  git clone git://github.com/ltw/vimfiles.git ~/.vim
fi

if ! [ -d ~/.vim/bundle/vundle ]
then
  git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

ln -sf .vim/vimrc ~/.vimrc
ln -sf .vim/gvimrc ~/.gvimrc

mkdir -p ~/.vim/.{backup,undo}

vim -N -u ~/.vimrc -es - <<-VIM
BundleInstall!
BundleClean
quit
VIM

(
  builtin cd ~/.vim/bundle/Command-T/ruby/command-t
  if type -t rvm > /dev/null
  then
    rvm system
  fi
  export PATH=/usr/bin:/bin:/usr/local/bin
  ruby extconf.rb
  make clean && make
)

