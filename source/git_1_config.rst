config
===============

WHAT is it
---------
::
     git config命令用于获取并设置存储库或全局选项。这些变量可以控制Git的外观和操作的各个方面。
     其实就是设置变量
     你可以在man git-config 的  CONFIGURATION FILE 段 找 你可以设置的变量
     用来配置当前的环境
          配置了 /etc/gitconfig  ~/.gitconfig .git/config

     
     /etc/gitconfig 不存在
     ~/.gitconfig 在 任何位置 git config --global user.name "wirelessqa";git config --global user.email wirelessqa.me@gmail.com 生成
     .git/config 在 项目顶层目录 git config user.name "wirelessqa";git config user.email wirelessqa.me@gmail.com


     还可以配置哪些环境
     git config --global credential.helper store
     配置客户端长期存储用户各和密码

     git config --global core.editor emacs

     配置你的默认编缉器,对于命令行模式无效

     git config --global merge.tool vimdiff  

     配置你的比较工具

     Git可以接受kdiff3, tkdiff, meld, xxdiff, emerge, vimdiff, gvimdiff, ecmerge, 和 opendiff作为有效的合并工具。

HOW to do
-------
::

     增删改查
     git config --levelName --add configName configValue

     

     git config  --global --unset configName 

     git config  --global --unset configName   partOfConfigValue 



     git config --levelName  configName configValue (只针对唯一量)

     可以看见可以加 --replace-all 去修改,并使其生效,原有的不会被删除



     git config configName

     git config --levelName configName

     git config --get configName 

     git config --list --levelName


     包括when
     git config --list 

     git config user.name  
     $ git help config
     $ git config --help  
     $ man git-config

     


WHY to do
--------
::
     
     对于单人编码来说,这是不必要的,但是如果是多人合作的,需要知道是谁提交的代码
     这是非常重要的，因为每次Git提交都会使用该信息。它被永远的嵌入到了你的提交中


HOW 1
--------

::
     
     $ git config --global user.name learnit #设置用户名
     $ git config --global user.email higoge(at)gmail.com # 设置用户邮箱
     以上两条指令若不执行，则无法commit。

     $ git config --global core.autocrlf false # 取消git根据操作系统进行crlf的转换



     不用配置也可以 git clone  但是参数一定要是 https

     配置改变了什么


     局部配置

     远端配置




     怎么协调公司和 github 的配置

     这个配置产生了什么效果,在哪里体现

reference
----------
`git教程1`_





.. _`git教程1`: http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html
