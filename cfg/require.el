(ensure-package-installed
 'ac-js2
 'ace-isearch
 'ace-jump-mode
 'ace-window
 'auto-complete
 'auto-complete-clang
 'autopair
 'centered-cursor-mode
 'diff-hl
 'diminish
 'rainbow-mode
 'elisp-slime-nav
 'etags
 'evil
 'evil-leader
 'evil-visualstar
 'fill-column-indicator
 'flycheck
 'flycheck-pos-tip
 'flymake-json
 'git-gutter
 'git-gutter-fringe
 'helm-projectile
 'helm-swoop
 'js2-mode
 'js2-refactor
 'linum-relative
 'magit
 'neotree
 'ov
 'powerline-evil
 'projectile
 'rainbow-delimiters
 'sublime-themes
 'tern
 'tern-auto-complete
 'w3
 'yasnippet
)


(require 'evil-leader)
(global-evil-leader-mode)
(require 'evil)
(evil-mode 1)
