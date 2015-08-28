(global-git-gutter-mode +1)

;; Jump to next/previous hunk

;;(global-set-key (kbd "§") 'git-gutter:next-hunk)
(define-key evil-normal-state-map "§" 'git-gutter:previous-hunk)
(define-key evil-normal-state-map "±" 'git-gutter:next-hunk)
(git-gutter:linum-setup)
