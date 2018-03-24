;; 官方文档 https://magit.vc/manual/magit.html#Top
;; M-x magit-status 在另外buffer中显示当前仓库状态，所有的操作都是在这个buffer中
;; 在magit-status buffer中：
;;   n net line p pre line
;;   cc 按2次c，git commit,然后出现写commit的地方，写完按C-c C-c就提交了
;;   ca 只修改上次体检的日志
;;   ll 查看当前分支日志
;;   lo 查看其它分支的日志

;; 使用视频： https://www.bilibili.com/video/av15958934/
(require-package 'magit)
;;(require 'magit-autoloads)
(provide 'init-git)
