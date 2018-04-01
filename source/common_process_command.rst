1 创建远程库
============

在服务器上建立的
服务器要不是你的,要不是别人的免费的,要不是别人的收费的

如果是你的,你自然就知道怎么建立了.

如果是别人的,按照别人的规则创建

这里说一下github

```c
1/
在github 上 创建账户
https://github.com

2/
点击 New repository

3/
填写名字 描述
添加 .gitignore
添加 license
选择是否公开(公开不收费,私密收费)

4/
点击 create repository

5/
显示一些如何把已有的本地库关联到当前远程库的信息.

```

2 clone远程库到本地
==================


git clone git@github.com:lisider/red_packets.git
git clone https://github.com/lisider/red_packets.git

上面两者有什么不同
git clone 做了什么
git clone 命令默认的只会建立master分支
clone时创建新的分支替代默认Origin HEAD（master）
git clone -b [new_branch_name]  xxx.git

clone 的时候会创建分支
创建分支 复制代码 建立追踪关系

git remote add origin urls
origin 到底是什么东西, 操作的本地分支是哪个分支

git clone支持多种协议，除了HTTP(s)以外，还支持SSH、Git、本地文件协议等，下面是一些例子。


git clone 前需不需要配置


3 修改本地库
===========

//要推动到哪个分支,在此时都要考虑
//修改的时候在什么分支上开发.
//最好在dev 上开发,让master 比较稳定,因为 你每天都要提交,但是如果功能没做完,就提交.然后别人刚好 pull 了一下,把你未完成的部分 合并了部分,跑步起来,就麻烦了.

//如果我们用两个分支,你在dev上开发,每天的推送都推导dev上,而别人也在dev上开发,好像一样啊.啊.

//或许是一个人一个分支,你做好了就merge到dev上,都都做好了,大家一块merge 到master 上,就好了.


1/
修改

2/
add
3/
commit


修改动了本地文件

add 动了.git目录,意思是添加 指定要 commit 的文件

commit 是 动了 .git 目录,意思是将add 指定的修改 提交到本地库中.

4 推送到远程库
============
1/git fetch
fetch 是 fetch的什么?

2/git merge

3/git push


push 和merge 好像差不多.


5 具体命令 顺序
=============


## 切换到分支做事情
git checkout -b dev
do_things
     modify
     git add 
     git commit
git checkout master

## 切换到主分支更新
git fetch
git merge origin/master


## 将分支上的更改merge 到主分支
git merge dev 
git branch -d dev


5.1 问题及出问题后的流程
=======================

$ git merge dev
error: merge is not possible because you have unmerged files.
hint: Fix them up in the work tree, and then use 'git add/rm <file>'
hint: as appropriate to mark resolution and make a commit.
fatal: Exiting because of an unresolved conflict.

$ git status 
On branch master
Your branch is up-to-date with 'origin/master'.
You have unmerged paths.
(fix conflicts and run "git commit")

Unmerged paths:
(use "git add <file>..." to mark resolution)

both modified:   source/file_merge

no changes added to commit (use "git add" and/or "git commit -a")

$ vi source/file_merge #修改

$ git add source/file_merge


$ git commmit -m "aaa"

$ git branch -d dev

$ git push origin master

