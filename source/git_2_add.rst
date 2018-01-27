add
======================


::

     什么时候 add
          为了显示指定 merge 成功,需要add
          为了显示添加到版本库,需要add

     add 之前的文件 被管理吗?
          工作区的文件不被管理
          有一个错觉是工作区的文件是被管理的,是因为 工作区 的文件 和 本地仓库中的一部分 是相同的,而本地仓库被管理,所以你误以为工作区的文件被管理了


     add 产生了什么效果
          add 之后的文件被放到了暂存区,暂存区 在 .git 文件夹中, 被 git 管理

     可以怎么add


     git add <file>

     git add *

     git add -A

     git add .


     state1 中增加了一个文件 README
      diff state0 state1 -ur 
      Binary files state0/.git/index and state1/.git/index differ
      Only in state1/.git/objects: 13
      Only in state1: README

     state2 中修改了一个文件 README
      $ diff state1 state2/ -ur
      Binary files state1/.git/index and state2/.git/index differ
      Only in state2/.git/objects: b2
      diff -ur state1/README state2/README
      --- state1/README       2018-01-27 12:31:26.290818232 +0800
      +++ state2/README       2018-01-27 12:34:11.534815272 +0800
      @@ -1,2 +1,3 @@
       
       
      +




      只要没 add ,做几次修改对于 git 来说都一样,因为此时没有git 没有管理 工作区的修改
