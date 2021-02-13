;; backup in one place. flat, no tree structure
(setq backup-directory-alist '(("" . "/tmp/emacs-backup")))

;; lua-mode
(add-to-list 'load-path "/home/flavio/.emacs.d/elpa")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(setq lua-indent-level 4)

;; tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
