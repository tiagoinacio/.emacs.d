(require 'ace-jump-mode)
(setq ace-jump-word-mode-use-query-char nil)
(evil-leader/set-key "/" 'evil-ace-jump-char-mode)
(define-key evil-normal-state-map (kbd "<return>") 'evil-ace-jump-word-mode)
(define-key evil-normal-state-map (kbd "RET") 'evil-ace-jump-word-mode)
