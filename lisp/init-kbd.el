;;kbd
(defun open-my-init-packages-file()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))
(global-set-key (kbd"<f3>") 'open-my-init-packages-file)
;;定义packages快捷键F3


(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "<f8>") 'ivy-resume)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode);;括号匹配
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))));;句中显示括号

;;缩进设置
(setq c-basic-offset 4)
(setq c-default-style "linux") ;;划重点

(global-set-key (kbd "C-c h a") 'helm-do-ag-this-file)
;;helm-gtags-setting
(global-set-key (kbd "C-c g t") 'helm-gtags-find-tag)
(global-set-key (kbd "C-c g s") 'helm-gtags-find-symbol)
(global-set-key (kbd "C-c g f") 'helm-gtags-tags-in-this-function)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c p") 'compile)

(setq recentf-max-menu-items 25);;set recentf file max 25

(global-set-key (kbd "<f5>") 'sr-speedbar-open)
(global-set-key (kbd "<f6>") 'sr-speedbar-close)

