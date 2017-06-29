#!/bin/sh

#  Manualinstall.sh
#  HexoDeploy
#
#  Created by huoshuguang on 2017/6/30.
#  Copyright © 2017年 boyer. All rights reserved.
pwd
spacehome=~/.space-vim
if [ -d "$spacehome" ]; then
echo "已经存在"
exit 0
fi

#vimdir=`pwd`/Util/space-vim
##目录替身
#ln -fs $vimdir ~/.space-vim
## for vim
#ln -fs $vimdir/init.vim ~/.vimrc
#ln -fs $vimdir/spacevim ~/.spacevim
## for neovim
#mkdir -p ~/.config/nvim
#ln -fs $vimdir/init.vim ~/.config/nvim/init.vim

