;; require
(require 'helm-config)
(require 'helm-misc)
(require 'helm-projectile)
(require 'helm-locate)

;; settings
(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)
(evil-leader/set-key "ls" 'helm-buffers-list)
(helm-mode 1)

;; Keybings
(evil-leader/set-key "ff" 'helm-projectile-find-file)
(evil-leader/set-key "bo" 'helm-bookmarks)
(evil-leader/set-key "wo" 'evil-ace-jump-word-mode)
(evil-leader/set-key "ca" 'evil-ace-jump-char-mode)
(define-key evil-normal-state-map (kbd ",") (kbd ":"))
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-x") 'helm-M-x)

;; Functions

(defun helm-my-buffers ()
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
  (helm-other-buffer '(helm-c-source-buffers-list
                       helm-c-source-elscreen
                       helm-c-source-projectile-files-list
                       helm-c-source-ctags
                       helm-c-source-recentf
                       helm-c-source-locate)
                     "*helm-my-buffers*")))

