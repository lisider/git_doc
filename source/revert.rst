
撤销上一个动作

1/

修改之后怎么撤销修改



git checkout README 撤销某个文件的修改

git checkout . 撤销全部修改

返回后的状态是 上一次 add ,
注意:执行这个命令的前提是 当前至少有一次提交

如果当前一次提交都没有,无法撤销修改,这时候就直接删了吧


git checkout 优先考虑 add 后的暂存区,如果 没有 add ,则考虑本地仓库


git checkout README 和git checkout --  README 效果一样





2/ 

git add 之后怎么撤销 git add 

git reset HEAD README        注意:执行这个命令的前提是 当前至少有一次提交
如果想去除修改 git checkout -- README

撤销了 add ,但是保留了修改
删除了 暂存区中的内容

这个不好 ,会撤销到 commit 之前,保留了git add 之后的修改,但是 之前 暂存区中 的 README 东西就没了
并且 README 不会被追踪了 ,这是就不会能 git check README ,撤销到上一次add之前的状态了

好像只能这样,因为 git 之保留最新一次 git 的 add ,这次add 之后,上次 add 就没了.所以暂存区中没有上次的git add

但是为什么这个文件就撤销追踪了呢? 这是个不好的东西,如果还需要追踪的话,必须 用 git add 重新加上这个文件

所以 git add 也不可以随意 add ,因为会覆盖上一次的add


2.1/ 

B git add, 撤销,A  git add ,怎么 恢复到 上一次B  git add 的状态

如果你 B git add 之后,没有git commit ,此时是无法撤回的 B之前的状态的
如果你 B git add 之后,有 git commit ,可以这样子

将上次版本中的东西之一 ,指定回滚到现在
     如果想去除修改 git checkout -- README, 注意 ,这是回滚到工作区的是 本地仓库中的内容,因为 暂存区中没有内容




3/

A commit 之后,修改 git add 之后  B git commit ,怎么撤销B git commit

git revert HEAD 
并不会丢失 B  commit ,只是在上一次 B git commit 之后 做了一次 删除之前修改 的 C commit 

所以当前的状态会丢失 上次A git commit 之后 的 东西,包括 修改,git add

这就很麻烦,如果我相关找回 上次 A git commit 之后的修改呢?


比较  当前 commit 和上次 commit 的区别,并将diff  打包 到现在的状态 ,但是注意 
这个 diff 不能包括 git add   ,只能包括 A commit 之后的修改

如何操作 ?
不知道





4/
如何真正删除一次 commit 

A commit 之后,修改 git add 之后  B git commit ,怎么撤销B git commit

得到的结果 是 A commit 之后 git add 之前的状态 
git reset --hard HEAD^


只是 将 HEAD 指针移动了位置

git log 中没了 ,但是 git reflog 中有 
推送到远程仓库的 git reflog 会被推送吗,不会被推送

但是commit 之前的修改还是被丢掉了





4/
如何真正删除一次commit ,且保留修改
git reset --soft HEAD^

按说现在 在 撤销add ,在撤销 工作区的修改,就可以返回到上次 commit 的状态了

git reset HEAD         注意:执行这个命令的前提是 当前至少有一次提交

git checkout .  



5/
如果A push ,修改,add, commit ,B push 之后,发现 push 错了,如何恢复push之前的状态


回退本地分支
git reflog
git reset --hard Obfafd

强制推动到远程分支
git push -f

此时 ,最新最新内容 为 A push 之后的内容,远程上没有 关于 B push的 信息

但是如果多人开发的时候就要处理 协调 的问题,

因为毕竟版本回退了,一般我们 不做回退,每次 commit 之前 pull
所以会出现一个问题, 
别人 在你出现bug 后 ,修复之前 下载了你的bug commit
然后 别人push 之后会把你的回退 消灭掉, 你的 bug commit 仍会出现在 远程


6/

git revert HEAD                     //撤销最近一次提交
git revert HEAD~1                   //撤销上上次的提交，注意：数字从0开始
git revert 0ffaacc                  //撤销0ffaacc这次提交

所以可以用这个东西来做,但是 git 服务器(远程仓库) 中会出现你的错误 提交记录
但是用了这个东西之后就可以不同 通知别人了 





reset 不用处理 冲突吗


自己的分支回滚直接用reset
公共分支回滚用revert
错的太远了直接将代码全部删掉，用正确代码替代

用reset的话对队友的要求比较高，用revert的话除了 revert 上一次 commit 之外(此时不需要解决冲突)  都要大面积的解决冲突










撤销历史动作
