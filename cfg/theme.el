(setq inhibit-startup-message t)
(set-face-attribute 'default nil :font "Monaco for Powerline")
(set-frame-font "Monaco for Powerline-14" nil t)
(load-theme 'base16-railscasts-dark t)

;; scroll
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

;; window
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start maximized

;; Cursor
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))
