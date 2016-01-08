(require 'neotree)
(evil-leader/set-key "ne" 'neotree-toggle)

 (add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "r") 'neotree-refresh)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
(setq neo-window-width 40)
(setq projectile-switch-project-action 'neotree-projectile-action)

(custom-set-faces
(set-face-attribute 'neo-button-face      nil :height 100)
(set-face-attribute 'neo-file-link-face   nil :height 100)
(set-face-attribute 'neo-dir-link-face    nil :height 100)
(set-face-attribute 'neo-header-face      nil :height 100)
(set-face-attribute 'neo-expand-btn-face  nil :height 100)
)
