;; Leader
(define-key evil-normal-state-map "," 'evil-ex)

;;;;;;;;;;;;;;;;;;;;;;;;;
; PREFIXES              ;
;;;;;;;;;;;;;;;;;;;;;;;;;
; b -> buffer           ;
; c -> change directory ;
; d -> diff             ;
; d -> dispatch         ;
; f -> find             ;
; g -> git gutter       ;
; l -> location list    ;
; n -> nerdtree         ;
; q -> quickfix         ;
; p -> plugin
; s -> source files     ;
; t -> tags             ;
; w -> window           ;
;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
; Default VIM Mappings ;
;;;;;;;;;;;;;;;;;;;;;;;;

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
(define-key evil-normal-state-map ["jk"] 'keyboard-quit)
(define-key evil-visual-state-map ["jk"] 'keyboard-quit)
(define-key minibuffer-local-map ["jk"] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map ["jk"] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map ["jk"] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map ["jk"] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map ["jk"] 'minibuffer-keyboard-quit)
(global-set-key ["jk"] 'evil-exit-emacs-state)

;; Mouse
(global-set-key [C-S-mouse-1] 'find-tag-no-prompt)

;; Source files
(evil-leader/set-key "sv" (lambda() (interactive) (load-file "~/.emacs")))
(evil-leader/set-key "s." 'load-file)

;; Window Management
(evil-leader/set-key "wo" 'only)
(evil-leader/set-key "ws" 'sav!)
(evil-leader/set-key "qa" 'save-buffers-kill-terminal)
(evil-leader/set-key "wd" 'delete-window)

;; Window Management Emacs Fullscreen
(evil-leader/set-key "wf" 'toggle-frame-fullscreen)
(evil-leader/set-key "wm" 'toggle-frame-maximized)

;; Change Directory
(evil-leader/set-key "cr" 'cd)
(evil-leader/set-key "cl" 'cd)
(evil-leader/set-key "ya" 'my-put-file-name-on-clipboard)

;; Movement
(define-key evil-normal-state-map "_" 'evil-delete-whole-line)
(define-key evil-visual-state-map "J"
  (lambda () (interactive) (next-line 5)))
(define-key evil-visual-state-map "K"
  (lambda () (interactive) (previous-line 5)))
(define-key evil-normal-state-map "J"
  (lambda () (interactive) (next-line 5)))
(define-key evil-normal-state-map "K"
  (lambda () (interactive) (previous-line 5)))
(define-key evil-normal-state-map "H"
  (lambda () (interactive) (backward-char 5)))
(define-key evil-normal-state-map "L"
  (lambda () (interactive) (forward-char 5)))

;; Camel Case Motion
(define-key evil-normal-state-map "´" 'subword-forward)

;; Wrapped Lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; Buffers
(define-key evil-normal-state-map "-" 'switch-to-prev-buffer)
(define-key evil-normal-state-map "+" 'switch-to-next-buffer)
(evil-leader/set-key "bd" 'kill-this-buffer)
(evil-leader/set-key "ba" 'kill-some-buffers)
(evil-leader/set-key "bo" 'kill-other-buffers)

;; Frame
(evil-leader/set-key "sw" 'other-frame)

;; Tags
(evil-leader/set-key "ta" 'projectile-find-tag)

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
