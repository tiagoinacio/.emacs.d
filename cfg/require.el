(ensure-package-installed 'evil-leader
                          'projectile
                          'magit
                          'ace-jump-mode
                          'evil
			              'elisp-slime-nav
                          'helm-projectile
                          )

(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(require 'ace-jump-mode)
(require 'elisp-slime-nav)
(require 'helm-config)
(require 'helm-projectile)
