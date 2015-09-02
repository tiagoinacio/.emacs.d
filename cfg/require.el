(ensure-package-installed 'ac-js2
                          'ace-jump-mode
                          'auto-complete
                          'autopair
                          'color-theme
                          'diminish
                          'dtrt-indent
                          'elisp-slime-nav
                          'evil
                          'evil-leader
                          'fill-column-indicator
                          'flycheck
                          'flycheck-pos-tip
                          'diff-hl
                          'powerline-evil
                          'helm-projectile
                          'helm-swoop
                          'evil-visualstar
                          'etags
                          'js2-refactor
                          'js2-mode
                          'magit
                          'neotree
                          'ov
                          'projectile
                          'rainbow-delimiters
                          'linum-relative
                          'git-gutter
                          'git-gutter-fringe
                          'tern
                          'tern-auto-complete
                          'ace-window
                          'ace-isearch
                          'sublime-themes
                          'yasnippet)


(require 'evil-leader)
(global-evil-leader-mode)
(require 'evil)
(evil-mode 1)
