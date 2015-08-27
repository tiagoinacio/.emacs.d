(setq projectile-enable-caching t)
(helm-projectile-on)

(evil-leader/set-key "ff" 'helm-projectile-find-file)
