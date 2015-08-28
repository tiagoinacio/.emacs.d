(ensure-package-installed 'evil-leader
                          'projectile
                          'magit
                          'ace-jump-mode
                          'evil
                          'diminish
                          'elisp-slime-nav
                          'helm-projectile
                          'powerline-evil
                          'flycheck
                          'dtrt-indent
                          'flycheck-pos-tip
                          'relative-line-numbers
                          'color-theme-approximate
                          'autopair
                          'fill-column-indicator
                          'rainbow-delimiters
                          'neotree
                          'ov
                          'js2-mode
                          'ac-js2
                          'yasnippet
                          'auto-complete
                          'js2-refactor
                          'tern
                          'tern-auto-complete)


(require 'evil-leader)
(global-evil-leader-mode)
(require 'evil)
(evil-mode 1)

