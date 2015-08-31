(load-file "~/.emacs.d/cfg/packages.el")
(load-file "~/.emacs.d/cfg/initialize.el")
(load-file "~/.emacs.d/cfg/functions.el")
(load-file "~/.emacs.d/cfg/require.el")
(my-load-all-in-directory "~/.emacs.d/vendor/")
(load-file "~/.emacs.d/cfg/general.el")
(load-file "~/.emacs.d/cfg/theme.el")
(load-file "~/.emacs.d/cfg/code-style.el")
(load-file "~/.emacs.d/cfg/macros.el")
(my-load-all-in-directory "~/.emacs.d/cfg/packages/")
(load-file "~/.emacs.d/cfg/mappings.el")
(load-file "~/.emacs.d/cfg/buffers.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "5d8caed7f4ed8929fd79e863de3a38fbb1aaa222970b551edfd2e84552fec020" "7545d3bb77926908aadbd525dcb70256558ba05d7c478db6386bfb37fb6c9120" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" default)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(helm-ag-base-command "ag --nogroup --hidden --ignore-case -C 1")
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
