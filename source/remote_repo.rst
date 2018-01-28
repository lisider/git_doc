remote repo
===============

::
     
     远程仓库与本地仓库之间的操作
     fetch 
          git fetch 要在存在本地仓库的基础上 做
          否则
          fatal: Not a git repository (or any of the parent directories): .git

          fetch 之后一般做下面的动作

          好像 fetch 的时候 又创建了一个分支,但不是创建了一个分支,好奇怪
          git merge origin/master

          所以得看 merge 是怎么回事
          git fetch origin                 # 抓取远程仓库更新，加下一条指令等同于git pull
          git merge origin/master          # 将远程主分支合并到本地当前分支


          

          

     push

          就是将 本地仓库推送到 远程仓库 , 和 暂存区工作区无关



     远程仓库 与 本地仓库 和 工作区的操作


     git pull

     pull 的时候 和 clone 修改的对象一样

     也算是修改的 区别吧
          git pull 要在存在本地仓库的基础上 做
          否则
          fatal: Not a git repository (or any of the parent directories): .git


     git clone


     clone 的时候 首先 做了 一个本地仓库 ,然后做了暂存区 ,然后做了工作区
     所以 本地仓库 和 暂存区 和工作区 没有区别

