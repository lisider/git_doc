init
====


git init

git init 之后是没有分支的
git的分支必须指向一个commit，没有任何commit就没有任何分支

An initial HEAD file that references the HEAD of the master branch is also created.

但在 .git/HEAD 中指明了  ref: refs/heads/master

表明你第一次提交之后,会创建分支 maser

如果此时git checkout -b dev 会将其修改为 ref: refs/heads/dev

但是此时仍然没有分支,表明你第一次提交之后,会创建分支 dev

repo init
repo sync
repo start master --all

add
====

git add .

git add file

git add -A


git checkout -- file 



 在本地新建同名的("dev")分支，并切换到该分支
 git checkout -t origin/dev 该命令等同于：
 git checkout -b dev origin/dev

