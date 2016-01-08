(require 'ace-jump-mode)
(setq ace-jump-word-mode-use-query-char nil)
(evil-leader/set-key "/" 'evil-ace-jump-char-mode)
(define-key evil-normal-state-map (kbd "enter") 'evil-ace-jump-word-mode)
(define-key evil-normal-state-map "W" 'evil-ace-jump-word-mode)

