diff
======
::

     1
     工作区 和 暂存区比较

     以暂存区 为基准

     git diff
     git diff <file>     # 比较当前文件和暂存区文件差异
     git diff   #比较所有文件
     git diff --stat     # 仅仅比较统计信息

     2

     工作区 和 仓库比较
     git diff HEAD
     git diff HEAD --stat

     3

     工作区 和 远程仓库比较


     4

     暂存区 和 仓库比较
     git diff --staged   # 比较暂存区和版本库差异
     git diff --cached   # 比较暂存区和版本库差异


     4.1 
     暂存区 和远程仓库比较


     5

     仓库 和远程仓库比较

     如果本地 比 远程仓库 新,则有效果
     git diff master  origin/master
     git diff master  origin/master --stat

     否则 无效果

     5.1
     远程分支已经修改，本地未同步的变更；
     git diff HEAD origin/master 没效果

     本地分支已经修改，远程未同步的变更；
     git diff origin/master master
     git diff origin/master HEAD


     6

     某两次 commit 之间的比较
     git diff <$id1> <$id2>   # 比较两次提交之间的差异

     以 <$id1> 为基准
     

     7 比较分支
     git diff <branch1> <branch2> #比较分支
     以 branch1 为基准


     cheat git |grep diff
     git diff branch_1 branch_2                              # Check difference between branches
     git diff master...feature
     # This can be used to diff files that are not in a git repo!
     git diff --no-index path/to/file/A path/to/file/B
     # Checkout a new branch from a different starting point
     # Pich a commit from a branch to current branch. This is different than merge as

     https://github.com/KylinGu/Test/blob/master/GitLearningExp.md
