;; 官方文档 https://magit.vc/manual/magit.html#Top
;; M-x magit-status 在另外buffer中显示当前仓库状态，所有的操作都是在这个buffer中
;; 在magit-status buffer中：
;; 几种状态
;;   Untracked files 未必git管理的文件,运行git add <file>
;;   Unstaged changes 文件修改了但是没有运行git add
;;   Staged Changes 文件处于Staged状态，即运行了git add，按u变成Unstaged Changes
;;   Unmerged into 还没合并的修改
;;   Unpushed to commit了 未push到远程分支
;;   Unpulled from 哪些提交了，未拉群到本地
;; 快捷键代表意思
;;   n next line
;;   p pre line
;;   cc 按2次c，git commit,然后出现写commit的地方，写完按C-c C-c就提交了
;;   ca 只修改上次体检的日志
;;   ll 查看当前分支日志
;;   lo 查看其它分支的日志
;; M-x magit-push 然后输入master分支（按实际情况），提交到远程服务器
;; 使用视频： https://www.bilibili.com/video/av15958934/
(require-package 'magit)
;;(require 'magit-autoloads)
(provide 'init-git)
