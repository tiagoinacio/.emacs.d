;; Leader
(define-key evil-normal-state-map "," 'evil-ex)

;; Page Up and Page Down
(define-key evil-normal-state-map (kbd "C-k") (lambda ()
                    (interactive)
                    (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-j") (lambda ()
                        (interactive)
                        (evil-scroll-down nil)))

;; Mouse
(global-set-key [C-S-mouse-1] 'find-tag-no-prompt)
;; (global-set-key [down-mouse-3] 'menu-choice)

;; esc quits
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)

;; Navigate through lines
(define-key evil-visual-state-map "J"
  (lambda () (interactive) (next-line 3)))
(define-key evil-visual-state-map "K"
  (lambda () (interactive) (previous-line 3)))
(define-key evil-normal-state-map "J"
  (lambda () (interactive) (next-line 3)))
(define-key evil-normal-state-map "K"
  (lambda () (interactive) (previous-line 3)))
(define-key evil-normal-state-map "H"
  (lambda () (interactive) (backward-char 3)))
(define-key evil-normal-state-map "L"
  (lambda () (interactive) (forward-char 3)))

;; Camel Case Motion
(define-key evil-normal-state-map "´" 'subword-forward)

;; Delete Line
(define-key evil-normal-state-map "_" 'evil-delete-whole-line)

;; Wrapped Lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; Window
(evil-leader/set-key "wo" 'only)
(evil-leader/set-key "wv" 'split-window-right)
(evil-leader/set-key "wh" 'split-window-below)
(evil-leader/set-key "wd" 'delete-window)
(evil-leader/set-key "wf" 'toggle-frame-fullscreen)
(evil-leader/set-key "wm" 'toggle-frame-maximized)

;; Buffers
(evil-leader/set-key "bd" 'kill-this-buffer)
(evil-leader/set-key "ba" 'kill-some-buffers)
(evil-leader/set-key "bo" 'kill-other-buffers)
(evil-leader/set-key "qa" 'save-buffers-kill-terminal)
(evil-leader/set-key "ya" 'my-put-file-name-on-clipboard)
(evil-leader/set-key "bw" 'save-buffer)
(define-key evil-normal-state-map "-" 'switch-to-prev-buffer)
(define-key evil-normal-state-map "+" 'switch-to-next-buffer)

;; Frame
(evil-leader/set-key "sw" 'other-frame)

;; Reload current file
(evil-leader/set-key "r." 'load-file)

(evil-leader/set-key "re"
  (load "~/.emacs"))

;; Tags
(evil-leader/set-key "pt" 'projectile-find-tag)

;; camelcase to _
(evil-leader/set-key "ca" 'toggle-camelcase-underscores)

;; fix brackets insert
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(evil-define-motion evil-last-non-blank (count)
  "Move the cursor to the last non-blank character
on the current line. If COUNT is given, move COUNT - 1
lines downward first."
  :type inclusive
  (evil-end-of-line count)
  (re-search-backward "^\\|[^[:space:]]")
  (setq evil-this-type (if (eolp) 'exclusive 'inclusive)))
(define-key evil-motion-state-map "g$" 'evil-end-of-line)
(define-key evil-motion-state-map "$" 'evil-last-non-blank)
