;; remove startup message
(setq inhibit-startup-message t)

;; Font
;;(set-face-attribute 'default nil :font "Hack")
(setq default-frame-alist '((font . "Hack-12")))
(set-frame-font "Hack-12" nil t)

;; (require 'color-theme-eclipse)
(add-to-list 'default-frame-alist '(background-mode . dark))
(load-theme 'mccarthy t)

;; scroll
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

;; window maximized
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start maximized

;; Cursor
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

;; Menu Bar
(menu-bar-mode -1) ;; Menu Bar
(menu-bar-mode -1) ;; Scoll Bar
(tool-bar-mode -1) ;; ToolBar

;; Matching Parens
(show-paren-mode t)

;; Don't truncate lines
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; change mode-line color by evil state
(lexical-let ((default-color (cons (face-background 'mode-line)
								   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
			(lambda ()
			  (let ((color (cond ((minibufferp) default-color)
								 ((evil-insert-state-p) '("#e80000" . "#ffffff"))
								 ((evil-emacs-state-p)  '("#444488" . "#ffffff"))
								 ((buffer-modified-p)   '("#006fa0" . "#ffffff"))
								 (t default-color))))
				(set-face-background 'mode-line (car color))
				           (set-face-foreground 'mode-line (cdr color))))))

;; mouse support for terminal
(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)
