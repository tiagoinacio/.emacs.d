;; dont create backups
(setq make-backup-files nil)

(setq enable-recursive-minibuffers t)

;; save bookmarks
(setq bookmark-default-file "~/.emacs.d/bookmarks"
      bookmark-save-flag 1) ;; save after every change

;; Line Breaking
(add-hook 'text-mode-hook (lambda ()
                            (turn-on-auto-fill)
                            (fci-mode)
                            (set-fill-column 82)))
(add-hook 'markdown-mode-hook (lambda ()
                            (turn-on-auto-fill)
                            (fci-mode)
                            (set-fill-column 82)))

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
