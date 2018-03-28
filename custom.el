
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#c5c8c6" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#373b41"))
 '(custom-enabled-themes (quote (atom-dark)))
 '(custom-safe-themes
   (quote
    ("a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "49f2966f6bd0e3e74379f4f338d9de6ab4cd9792df0e6f0829e1a047c4bd6e9f" "8a0459ddd66c45d4bc9820c9c37df1c1e6b411dbdec62245551042ff5652abbb" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(fci-rule-color "#373b41")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; For Java
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/jdee-bin-2.4.1/lisp")
;; (load "jde")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; chrome edit-with-emacs 插件使用
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'edit-server)
(edit-server-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; server mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(server-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 保存上一次的会话
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "desktop")
(desktop-save-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; web-mode
;; http://web-mode.org/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; using web-mode for editing plain HTML files
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;; customize indent
(defun my-web-mode-hook()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  )
(add-hook 'web-mode-hook 'my-web-mode-hook)
;; ;; HTML element offset indentation
;; (setq web-mode-markup-indent-offset 2)
;; ;; CSS offset indentation
;; (setq web-mode-css-indent-offset 2)
;; ;; Script/code offset indentation (for JavaScript, Java, PHP, Ruby, Go, VBScript, Python, etc.)
;; (setq web-mode-code-indent-offset 2)

;; tabbar
(global-set-key [(M k)] 'tabbar-forward)
(global-set-key [(M j)] 'tabbar-backward)
(global-set-key [(M n)] 'tabbar-forward-group)
(global-set-key [(M p)] 'tabbar-backward-group)

;; key
(global-set-key (kbd "M-0") 'delete-window)           ;删除当前窗口
(global-set-key (kbd "M-2") 'split-window-vertically) ;垂直分割窗口
(global-set-key (kbd "M-3") 'split-window-horizontally) ;水平增加一个窗口
(global-set-key (kbd "M-o") 'other-window)          ;跳转到其他窗口
(global-set-key (kbd "C-h") 'delete-backward-char)  ;向后删除字符
(global-set-key (kbd "M-h") 'backward-kill-word)    ;删除词
(global-set-key (kbd "M-g") 'goto-line)                   ;跳转到指定行
(global-set-key (kbd "C-;") 'toggle-truncate-lines)       ;折行
(global-set-key (kbd "C-c C-f") 'toggle-frame-fullscreen) ; 全屏
(global-set-key [(control tab)] 'kill-this-buffer) ; 关闭当前文件

;; magit
(global-set-key (kbd "C-x g s") 'magit-status)
(global-set-key (kbd "C-x g u") 'magit-push)
(global-set-key (kbd "C-x g p") 'magit-pull)

;; xml
;; 编辑xml时C-c C-f 自动完成关闭标签，例如</div>

;; 编码
;; 设置默认编码
(setq default-buffer-file-coding-system 'utf-8)
;; 新建和打开文件时的编码
(prefer-coding-system 'utf-8)

;; yasnippet
(eval-after-load 'yasnippet
  '(progn
     (define-key yas-keymap (kbd "TAB") nil)
     (define-key yas-keymap (kbd "C-o") 'yas-next-field-or-maybe-expand)))

;; 关闭启动时多了一个黑色的窗口
(switch-to-buffer buffer-file-name)
(delete-other-windows)

;; isearch
(defun my-isearch-function ()
  "Make isearch skip characters -=<> while searching."
  (if (not isearch-regexp)
      (lambda (string &optional bound noerror count)
        (funcall
         (if isearch-forward
             're-search-forward
           're-search-backward)
         (mapconcat (lambda (c) (regexp-quote (string c))) string
                    "\\(?:[-=<>]*\\)?")
         bound
         noerror
         count))
    (isearch-search-fun-default)))


(defun toggle-my-isearch ()
  "Toggle my search mode.
If activated, incremental search skips characters -=<> while
searching.

For example, searching `foobar' matches `foo-bar' or `f-o-o=b<a>r'."
  (interactive)
  (if (eq isearch-search-fun-function 'isearch-search-fun-default)
      (progn
        (setq isearch-search-fun-function 'my-isearch-function)
        (message "my isearch on"))
    (setq isearch-search-fun-function 'isearch-search-fun-default)
    (message "my isearch off")))


(global-set-key (kbd "s-s") 'toggle-my-isearch)

;;  show non-ascii characters of current buffer
(defun occur-non-ascii ()
  "Find any non-ascii characters in the current buffer."
  (interactive)
  (occur "[^[:ascii:]]"))
;; php mode
(require 'php+-mode)

;; tramp for windows
;; copy plink to emacs/bin，then add to path
(require 'tramp)
(setq tramp-default-method "plink")

;; isearch+
(add-to-list 'load-path "~/.emacs.d/elpa/isearch+-20170723.1826")
(require 'isearch+)

;; diary
(setq diary-file "~/diary/diary")
