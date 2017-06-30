#!/bin/sh

#  Manualinstall.sh
#  HexoDeploy
#
#  Created by huoshuguang on 2017/6/30.
#  Copyright © 2017年 boyer. All rights reserved.
pwd
vimdir=`pwd`/Util/space-vim
spacehome=~/.space-vim
if [ -d "$spacehome" ]; then
    echo "已经存在"
else
    #目录替身
    ln -fs $vimdir ~/.space-vim
fi

function lnfsToFile()
{
    lnfile=~/$2
    if [ -f $lnfile ]
    then
        echo $lnfile"已存在"
    else
        #制作替身
        file=$vimdir"/"$1
        echo "ln -fs $file $lnfile"
        ln -fs $file $lnfile
    fi
}

# for vim
lnfsToFile "init.vim" ".vimrc"
lnfsToFile "spacevim" ".spacevim"
# for neovim
mkdir -p ~/.config/nvim
lnfsToFile "init.vim" "/.config/nvim/init.vim"


