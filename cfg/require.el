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
                          'rainbow-delimiters)

(require 'evil-leader)
(global-evil-leader-mode)
(require 'iso-transl)
(require 'evil)
(require 'ace-jump-mode)
(require 'elisp-slime-nav)

