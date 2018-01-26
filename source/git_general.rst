git_1
======



基本概念
--------

.. code-block:: shell

     本地仓库
          工作目录 就是你在编辑的文件
          暂存区   由当前工程中最顶层目录的 .git 文件夹内的内容表示
          HEAD     也在 .git 文件夹内 表示
     远程仓库
          HEAD


     远程仓库没有 工作目录 和暂存区的概念

     但是网页版的修改,commit 是怎么回事 


     HEAD 到底是什么

     分支又是什么

     一般我们怎么工作

     这时候需要标签


     一般会出什么错误,怎么解除错误
          错误1
               merge 或者 pull 的时候 出现冲突,会自动合并,如果不成功过
               查看冲突 git diff <source _branch> <target_branch>
               自己解决冲突,
               然后标记合并成功  git add <file>

          在这时候需要  git log

          错误2
               想要放弃当前的修改(且修改没有任何add 或者 commit)
               git checkout -- <filename>
               此时恢复的是当前HEAD中的内容

     git 管理的是什么
          本地仓库 和远程仓库

          工作区不属于本地仓库,不被管理,但是如果你一旦 git add ,将 工作区放入本地仓库,就好像是工作区被管理了,但是其实管理的还是本地仓库

     
::
     
     git 的子命令有多少

          add                  bundle               config               gc                   log                  rebase               revert               submodule 
          am                   checkout             describe             get-tar-commit-id    merge                reflog               rm                   subtree 
          annotate             cherry               diff                 grep                 mergetool            relink               shortlog             tag 
          apply                cherry-pick          difftool             help                 mv                   remote               show                 verify-commit 
          archive              clang-format-3.8     fetch                imap-send            name-rev             repack               show-branch          whatchanged 
          bisect               clean                filter-branch        init                 notes                replace              stage                worktree 
          blame                clone                format-patch         instaweb             pull                 request-pull         stash                
          branch               commit               fsck                 interpret-trailers   push                 reset                status    
