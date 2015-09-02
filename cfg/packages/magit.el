(setq-default evil-overriding-maps
              '(
                (magit-mode-map . nil)
                (magit-status-mode-map . nil)
                (magit-svn-status-mode-map . nil)
                (magit-svn-mode-map . nil)
                (magit-reflog-mode-map . nil)
                (magit-log-select-mode-map . nil)
                ; some other magit mode
                ))
(setq-default evil-normal-state-modes
              '(
                magit-mode
                magit-diff-mode
                magit-status-mode
                magit-log-mode
                magit-reflog-mode
                magit-process-mode))
(setq-default evil-insert-state-modes
              '(
                magit-log-select-mode
                diff-mode
                git-rebase-mode
                magit-popup-mode
                magit-popup-sequence-mode))
;;; then load evil


(with-eval-after-load 'magit
  (define-key magit-mode-map "\s" nil) ;space I use space as my evil-leader key
  (define-key magit-diff-mode-map "\s" nil) ;space
  (define-key magit-diff-mode-map "j" nil)

  (define-key magit-status-mode-map "j" 'next-line) ;may be should evil-next-line
  (define-key magit-mode-map "j" 'next-line)
  (define-key magit-mode-map "k" 'previous-line)
  (define-key magit-file-section-map "K" 'magit-discard)
  (define-key magit-file-section-map "k" nil)
  (define-key magit-hunk-section-map "K" 'magit-discard)
  (define-key magit-hunk-section-map "k" nil)
  (define-key magit-unstaged-section-map "k" nil)
  (define-key magit-unstaged-section-map "K" 'magit-discard)
  (define-key magit-staged-section-map "K" 'magit-discard)
  (define-key magit-staged-section-map "k" nil)
  (define-key magit-stash-section-map "K" 'magit-stash-drop)
  (define-key magit-stash-section-map "k" nil)
  (define-key magit-stashes-section-map "K" 'magit-stash-clear)
  (define-key magit-stashes-section-map "k" nil)

  (define-key magit-untracked-section-map "K" 'magit-discard)
  (define-key magit-untracked-section-map "k" nil)

  (define-key magit-branch-section-map "K" 'magit-branch-delete)
  (define-key magit-branch-section-map "k" nil)

  (define-key magit-remote-section-map "K" 'magit-remote-remove)
  (define-key magit-remote-section-map "k" nil)

  (define-key magit-tag-section-map "k" nil)
  (define-key magit-tag-section-map "K" 'magit-tag-delete))
