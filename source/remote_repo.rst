remote repo
===============

::
     
     远程仓库与本地仓库之间的操作
     fetch 
          git fetch 要在存在本地仓库的基础上 做
          否则
          fatal: Not a git repository (or any of the parent directories): .git

          好像 fetch 的时候 又创建了一个分支,但不是创建了一个分支,好奇怪
          fetch 之后一般做下面的动作
          git merge origin/master


          所以得看 merge 是怎么回事
          git fetch origin                 # 抓取远程仓库更新，加下一条指令等同于git pull
          git merge origin/master          # 将远程主分支合并到本地当前分支


          

          

     push

          就是将 本地仓库推送到 远程仓库 , 和 暂存区工作区无关

          git push # push所有分支
          git push origin master # 将本地主分支推到远程主分支
          git push -u origin master # 将本地主分支推到远程(如无远程主分支则创建，用于初始化远程仓库)

          git push origin # 创建远程分支， origin是远程仓库名
          git push origin : # 创建远程分支
          git push origin : #先删除本地分支(git br -d )，然后再push删除远程分支



     远程仓库 与 本地仓库 和 工作区的操作


     git pull

     pull 的时候 和 clone 修改的对象一样

     也算是修改的 区别吧
          git pull 要在存在本地仓库的基础上 做
          否则
          fatal: Not a git repository (or any of the parent directories): .git

          git pull 是  git fetch  和 git merge origin/master 的合体,会有一些问题
               因为你 fetch 了之后,如果远端仓库的最新更新有问题, 你直接merge 会出现错误

     git clone


     clone 的时候 首先 做了 一个本地仓库 ,然后做了暂存区 ,然后做了工作区
     所以 本地仓库 和 暂存区 和工作区 没有区别





     Git远程仓库管理
     git remote -v # 查看远程服务器地址和仓库名称
     git remote show origin # 查看远程服务器仓库状态
     git remote add origin git@github:robbin/robbin_site.git # 添加远程仓库地址
     git remote set-url origin git@github.com:robbin/robbin_site.git # 设置远程仓库地址(用于修改远程仓库地址)
     git remote rm # 删除远程仓库
     git push origin –delete master



     创建远程仓库
     git clone –bare robbin_site robbin_site.git # 用带版本的项目创建纯版本仓库
     scp -r my_project.git git@git.csdn.net:~ # 将纯仓库上传到服务器上

     mkdir robbin_site.git && cd robbin_site.git && git –bare init # 在服务器创建纯仓库
     git remote add origin git@github.com:robbin/robbin_site.git # 设置远程仓库地址
     git push -u origin master # 客户端首次提交
     git push -u origin develop # 首次将本地develop分支提交到远程develop分支，并且track

     git remote set-head origin master # 设置远程仓库的HEAD指向master分支

`尽量不要用pull`_
.. _`尽量不要用pull`: https://oschina.net/translate/git-fetch-and-merge
