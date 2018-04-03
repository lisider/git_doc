- [Git 分支 - 何谓分支](https://git-scm.com/book/zh/v1/Git-%E5%88%86%E6%94%AF-%E4%BD%95%E8%B0%93%E5%88%86%E6%94%AF)

- [ Git HEAD detached from XXX (git HEAD 游离) 解决办法 ](https://blog.csdn.net/u011240877/article/details/76273335)

```c
$ cat .git/HEAD
ref: refs/heads/master
$ cat .git/refs/heads/master
35ede5c916f88d8ba5a9dd6afd69fcaf773f70ed

```

```c

head 可以指向分支,分支指向提交

head 也可以指向提交,这时,我们说 head 游离

head 游离 时,即直接指向提交时,修改无法提交?
最好在该commit 创建一个分支,然后head 指向这个分支,然后做修改?

```
