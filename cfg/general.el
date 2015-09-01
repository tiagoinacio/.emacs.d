;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))

(setq enable-recursive-minibuffers t)

;; save bookmarks
(setq bookmark-default-file "~/.emacs.d/bookmarks"
      bookmark-save-flag 1) ;; save after every change

;; Line Breaking
(add-hook 'text-mode-hook (lambda ()
                            (turn-on-auto-fill)
                            (fci-mode)
                            (set-fill-column 80)))
(add-hook 'markdown-mode-hook (lambda ()
                            (turn-on-auto-fill)
                            (fci-mode)
                            (set-fill-column 80)))

;; Dont move cursor back
(setq evil-move-cursor-back nil)

;; Remember cursor position in files
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Remove scrollbar
(scroll-bar-mode -1)

;; File Types
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(setq mode-line-format nil)

;; Prompts Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

;; Prevent annoying beep on errors
(setq visible-bell t)

;; Highlight regions and add special behaviors to regions
(setq transient-mark-mode t)

;; Remove whitespace on save
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))
(add-hook 'before-save-hook (lambda () (delete-trailing-lines)))
