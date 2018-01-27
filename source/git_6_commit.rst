commit
========

::
     做了什么事情

     将 add 之后 的改变,提交到了另一个状态

     git add 算是 选择东西, git commit 才算是真正的提交


     SVN没有 暂存区的概念,只有 本地仓库的概念



     git commit 有那些操作


     state1 中 git add 了一个 README

     state2 中 git add 了一个 README ,并 git commit 了一次

     $ diff state1 state2 -ur
     Only in state2/.git: COMMIT_EDITMSG
     Binary files state1/.git/index and state2/.git/index differ
     diff -ur state1/.git/logs/HEAD state2/.git/logs/HEAD
     --- state1/.git/logs/HEAD       2018-01-27 12:31:09.426818570 +0800
     +++ state2/.git/logs/HEAD       2018-01-27 12:37:39.622811686 +0800
     @@ -1 +1,2 @@
      0000000000000000000000000000000000000000 eb5465b4aa169df72ec32da4a12d015bb0316c8d lisider <1368317399@qq.com> 1516114150 +0800     clone: from git@github.com:lisider/learn_python.git
      +eb5465b4aa169df72ec32da4a12d015bb0316c8d be568af63352bcbcc6fae443752e22bce13c7929 lisider <1368317399@qq.com> 1517027859 +0800     commit: commit
      diff -ur state1/.git/logs/refs/heads/master state2/.git/logs/refs/heads/master
      --- state1/.git/logs/refs/heads/master  2018-01-27 12:31:09.426818570 +0800
      +++ state2/.git/logs/refs/heads/master  2018-01-27 12:37:39.622811686 +0800
      @@ -1 +1,2 @@
       0000000000000000000000000000000000000000 eb5465b4aa169df72ec32da4a12d015bb0316c8d lisider <1368317399@qq.com> 1516114150 +0800     clone: from git@github.com:lisider/learn_python.git
       +eb5465b4aa169df72ec32da4a12d015bb0316c8d be568af63352bcbcc6fae443752e22bce13c7929 lisider <1368317399@qq.com> 1517027859 +0800     commit: commit
       Only in state2/.git/objects: 77
       Only in state2/.git/objects: be
       diff -ur state1/.git/refs/heads/master state2/.git/refs/heads/master
       --- state1/.git/refs/heads/master       2018-01-27 12:31:09.426818570 +0800
       +++ state2/.git/refs/heads/master       2018-01-27 12:37:39.622811686 +0800
       @@ -1 +1 @@
       -eb5465b4aa169df72ec32da4a12d015bb0316c8d
       +be568af63352bcbcc6fae443752e22bce13c7929

