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
(load-file "~/.emacs.d/cfg/theme.el") ;; $ and g$ behaviour
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
