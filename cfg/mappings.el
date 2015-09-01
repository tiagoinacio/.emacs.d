;; Leader
(define-key evil-normal-state-map "," 'evil-ex)

;; Reload configuration
(evil-leader/set-key "re" 'eval-buffer)

;; Page Up and Page Down
(define-key evil-normal-state-map (kbd "C-k") (lambda ()
                    (interactive)
                    (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-j") (lambda ()
                        (interactive)
                        (evil-scroll-down nil)))


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

;; Auto Indent on every Enter
(define-key global-map (kbd "RET") 'newline-and-indent)

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
;; Delete Line
(define-key evil-normal-state-map "_" 'evil-delete-whole-line)

;; Wrapped Lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)


;; Window
(evil-leader/set-key "vs" 'split-window-right)
(evil-leader/set-key "hs" 'split-window-below)
(evil-leader/set-key "wd" 'delete-window)
(evil-leader/set-key "fu" 'toggle-frame-fullscreen)
(evil-leader/set-key "ma" 'toggle-frame-maximized)

;; Buffers
(evil-leader/set-key "bd" 'kill-this-buffer)
(evil-leader/set-key "ba" 'kill-some-buffers)
(evil-leader/set-key "on" 'kill-other-buffers)
(evil-leader/set-key "qa" 'save-buffers-kill-terminal)
(evil-leader/set-key "ya" 'my-put-file-name-on-clipboard)
(evil-leader/set-key "sa" 'sav!)
(define-key evil-normal-state-map "-" 'switch-to-prev-buffer)
(define-key evil-normal-state-map "+" 'switch-to-next-buffer)

;; Tags
(evil-leader/set-key "ft" 'find-tag)

