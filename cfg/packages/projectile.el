(projectile-global-mode)
(setq projectile-enable-caching nil)
(helm-projectile-on)
(evil-leader/set-key "TAB" 'helm-projectile-find-file)
(evil-leader/set-key "cp" 'helm-projectile-find-file)
(evil-leader/set-key "ff" 'helm-projectile-ag)
(evil-leader/set-key "fp" 'helm-projectile-switch-project)
(evil-leader/set-key "fa" 'helm-projectile-find-file)
(evil-leader/set-key "fd" 'helm-projectile-find-dir)
(evil-leader/set-key "cd" 'helm-projectile-find-dir)
(add-hook 'find-file-hook
          (lambda ()
                        (setq default-directory command-line-default-directory)))

(setq projectile-globally-ignored-files '("*.txt" "*.o" "*.so" "*.el#" "*~" "backups/*" "git/" "baseChanges/" "node-modules" "vendor"))
