branch
================

::
     
     为什么要创建分支
     在远程还是本地创建分支
     为什么不直接在master  上开发

     需要创建多少分支?
     工作的时候要在哪个分支上开发


     HEAD严格来说不是指向提交，而是指向master，master才是指向提交的，所以，HEAD指向的就是当前分支。
     因为创建、合并和删除分支非常快，所以Git鼓励你使用分支完成某个任务，合并后再删掉分支，这和直接在master分支上工作效果是一样的，但过程更安全。


     软件开发中，bug就像家常便饭一样。有了bug就需要修复，在Git中，由于分支是如此的强大，所以，每个bug都可以通过一个新的临时分支来修复，修复后，合并分支，然后将临时分支删除。

     添加一个新功能时，你肯定不希望因为一些实验性质的代码，把主分支搞乱了，所以，每添加一个新功能，最好新建一个feature分支，在上面开发，完成后，合并，最后，删除该feature分支。

     另外还有储存工作现场的  功能 git stash

     git stash list
     git stash apply stash@{0}




     冲突了 会有 分支的log
     如果 merge 的时候带参数 --no-ff 即 强制禁用Fast forward模式 ,也会有log

     # 列出所有本地分支
     $ git branch

     # 列出所有远程分支
     $ git branch -r

     # 列出所有本地分支和远程分支
     $ git branch -a

     # 新建一个分支，但依然停留在当前分支
     $ git branch [branch-name]

     # 新建一个分支，并切换到该分支
     $ git checkout -b [branch]

     # 新建一个分支，指向指定commit
     $ git branch [branch] [commit]

     # 新建一个分支，与指定的远程分支建立追踪关系
     $ git branch --track [branch] [remote-branch]

     # 切换到指定分支，并更新工作区
     $ git checkout [branch-name]

     # 切换到上一个分支
     $ git checkout -

     # 建立追踪关系，在现有分支与指定的远程分支之间
     $ git branch --set-upstream [branch] [remote-branch]

     # 合并指定分支到当前分支
     $ git merge [branch]

     # 选择一个commit，合并进当前分支
     $ git cherry-pick [commit]

     # 删除分支
     $ git branch -d [branch-name]

     # 删除远程分支
     $ git push origin --delete [branch-name]
     $ git branch -dr [remote/branch]


     git remote -v
     origin  git@github.com:michaelliao/learngit.git (fetch)
     origin  git@github.com:michaelliao/learngit.git (push)



     上面显示了可以抓取和推送的origin的地址。如果没有推送权限，就看不到push的地址。


     并不是一定要把本地分支往远程推送，那么，哪些分支需要推送，哪些不需要呢？

     master分支是主分支，因此要时刻与远程同步；

     dev分支是开发分支，团队所有成员都需要在上面工作，所以也需要与远程同步；

     bug分支只用于在本地修复bug，就没必要推到远程了，除非老板要看看你每周到底修复了几个bug；

     feature分支是否推到远程，取决于你是否和你的小伙伴合作在上面开发。



     拉下来代码,只有 master 分支,但 远程仓库上 有很多分支
     需要
     git checkout -b dev origin/dev



     每个人都需要在 dev 分支上做事情
     然后 

     git push origin dev 
     推送失败，因为你的小伙伴的最新提交和你试图推送的提交有冲突，解决办法也很简单，

     所以接下来要这样做
     Git已经提示我们，先用git pull把最新的提交从origin/dev抓下来，
     然后，在本地合并，解决冲突，再推送：
     git branch --set-upstream dev origin/dev 绑定连接
     git pull
     解决冲突(这时候会提示冲突)
     $git pull 
     remote: Counting objects: 3, done.
     remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
     Unpacking objects: 100% (3/3), done.
     From github.com:lisider/testgit
        e870d52..45d8150  master     -> origin/master
        Auto-merging README
        CONFLICT (content): Merge conflict in README
        Automatic merge failed; fix conflicts and then commit the result.


     $ git status 
     On branch master
     Your branch and 'origin/master' have diverged,
     and have 2 and 2 different commits each, respectively.
       (use "git pull" to merge the remote branch into yours)
       You have unmerged paths.
         (fix conflicts and run "git commit")

     Unmerged paths:
         (use "git add <file>..." to mark resolution)

         both modified:   README

         no changes added to commit (use "git add" and/or "git commit -a")



     然后我们要修改 README, git add  README

     git commit -m "merge & fix hello.py"
     git push origin dev


     Git远程分支管理
     git pull (抓取远程仓库所有分支更新并合并到本地)
     git pull –no-ff # 抓取远程仓库所有分支更新并合并到本地，不要快进合并
     git pull upstream master
     git fetch origin # 抓取远程仓库更新
     git merge origin/master # 将远程主分支合并到本地当前分支
     git co –track origin/branch # 跟踪某个远程分支创建相应的本地分支
     git co -b origin/ # 基于远程分支创建本地分支，功能同上

     git push # push所有分支
     git push origin master # 将本地主分支推到远程主分支
     git push -u origin master # 将本地主分支推到远程(如无远程主分支则创建，用于初始化远程仓库)
     git push origin # 创建远程分支， origin是远程仓库名
     git push origin : # 创建远程分支
     git push origin : #先删除本地分支(git br -d )，然后再push删除远程分支

`git基础用法`_

.. _`git基础用法`:http://free1.github.io/tool/2013/06/03/git-note.html
