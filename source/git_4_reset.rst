reset
======


::

     reset 可以做什么事情
          可以将暂存区恢复到上一次 add 之前
               git reset (git reset –hard 会覆盖)
          可以将HEAD 恢复到一次 commmit 之前
               git reset –hard origin/master (远程仓库覆盖本地仓库)
          可以将远程仓库 恢复到 上一次 push之前
               git reset –hard <commitID> (如果要覆盖远程必须强制推  git push -f)

          git reset只是在本地仓库中回退版本，而远程仓库的版本不会变化?


          可以将 工作区 恢复到 和 暂存区 一样吗?可以,但是不用 reset
          用checkout
          git checkout . (git checkout <file>)


          没有远程仓库的情况下, checkout 没有作用


     commit 之后,撤销操作

     如果要是 提交了以后，可以使用 git revert

     还原已经提交的修改 
     此次操作之前和之后的commit和history都会保留，并且把这次撤销作为一次最新的提交 
     git revert HEAD 撤销前一次 commit 
     git revert HEAD^ 撤销前前一次 commit 
     git revert commit-id (撤销指定的版本，撤销也会作为一次提交进行保存） 
     git revert是提交一个新的版本，将需要revert的版本的内容再反向修改回去，版本会递增，不影响之前提交的内容。)

     注意:并没有删除之前的提交记录,但是删除了上一次提交
     这一次 revert 也有记录
     好像吧工作区 和 暂存区的内容也清空了
