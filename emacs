(load-file "~/.emacs.d/cfg/packages.el")
(load-file "~/.emacs.d/cfg/initialize.el")
(load-file "~/.emacs.d/cfg/functions.el")
(load-file "~/.emacs.d/cfg/require.el")
(my-load-all-in-directory "~/.emacs.d/vendor/")
(load-file "~/.emacs.d/cfg/general.el")
(load-file "~/.emacs.d/cfg/code-style.el")
(load-file "~/.emacs.d/cfg/macros.el")
(my-load-all-in-directory "~/.emacs.d/cfg/packages/")
(load-file "~/.emacs.d/cfg/mappings.el")
(load-file "~/.emacs.d/cfg/buffers.el")
(load-file "~/.emacs.d/cfg/theme.el")


;; $ and g$ behaviour
(evil-define-motion evil-last-non-blank (count)
  "Move the cursor to the last non-blank character
on the current line. If COUNT is given, move COUNT - 1
lines downward first."
  :type inclusive
  (evil-end-of-line count)
  (re-search-backward "^\\|[^[:space:]]")
  (setq evil-this-type (if (eolp) 'exclusive 'inclusive)))
(define-key evil-motion-state-map "g$" 'evil-end-of-line)
(define-key evil-motion-state-map "$" 'evil-last-non-blank)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9f3a4edb56d094366afed2a9ba3311bbced0f32ca44a47a765d8ef4ce5b8e4ea" "5d8caed7f4ed8929fd79e863de3a38fbb1aaa222970b551edfd2e84552fec020" "7545d3bb77926908aadbd525dcb70256558ba05d7c478db6386bfb37fb6c9120" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" default)))
 '(helm-ag-base-command "ag --nogroup --nocolor --hidden --ignore-case -C 1")
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
