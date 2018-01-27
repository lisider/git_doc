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
