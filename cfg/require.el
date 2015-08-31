(ensure-package-installed 'ac-js2
                          'ace-jump-mode
                          'auto-complete
                          'autopair
                          'color-theme-approximate
                          'diminish
                          'dtrt-indent
                          'elisp-slime-nav
                          'evil
                          'evil-leader
                          'fill-column-indicator
                          'flycheck
                          'flycheck-pos-tip
                          'diff-hl
                          'helm-projectile
                          'helm-swoop
                          'js2-mode
                          'js2-refactor
                          'magit
                          'neotree
                          'ov
                          'powerline-evil
                          'projectile
                          'rainbow-delimiters
                          'linum-relative
                          'git-gutter
                          'git-gutter-fringe
                          'tern
                          'tern-auto-complete
                          'ace-window
                          'ace-isearch
                          'yasnippet)

(require 'evil-leader)
(global-evil-leader-mode)
(require 'evil)
(evil-mode 1)
