#########################################################################
# File Name: lazygit.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Mon 26 Mar 2018 06:43:21 PM CST
# Version : 1.0
#########################################################################
#!/bin/bash
function lazygit_v1() { 
    git add "$1" 
    git commit -m "$2"
    if [ $# == 4 ];then
        git push "$3" "$4"
    elif [ $# == 2 ];then
        git push origin master
    fi
}


function lazygit_v2() { 
    git add "$1" 
    git commit -m "$2"
    git fetch

    if [ $# == 4 ];then
        git merge $3/$4
    elif [ $# == 2 ];then
        git merge origin maser
    fi

    if [ $? != 0 ];then
        return $?
    fi

    if [ $# == 4 ];then
        git push "$3" "$4"
    elif [ $# == 2 ];then
        git push origin master
    fi
}
