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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(custom-safe-themes
   (quote
	("108b3724e0d684027c713703f663358779cc6544075bc8fd16ae71470497304f" "3b0a350918ee819dca209cec62d867678d7dac74f6195f5e3799aa206358a983" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "a3132bd39a977ddde4c002f8bd0ef181414c3fbe9228e3643b999491192680ad" "6ebb2401451dc6d01cd761eef8fe24812a57793c5ccc427b600893fa1d767b1d" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "4cc014287035b11d1f8d45af1ff18f3509496a760650d16c7771ac9bdf16b1a6" default)))
 '(fci-rule-color "#121212")
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(helm-ag-base-command "ag --nogroup --nocolor --hidden --ignore-case -C 1")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#d54e53")
	 (40 . "goldenrod")
	 (60 . "#e7c547")
	 (80 . "DarkOliveGreen3")
	 (100 . "#70c0b1")
	 (120 . "DeepSkyBlue1")
	 (140 . "#c397d8")
	 (160 . "#d54e53")
	 (180 . "goldenrod")
	 (200 . "#e7c547")
	 (220 . "DarkOliveGreen3")
	 (240 . "#70c0b1")
	 (260 . "DeepSkyBlue1")
	 (280 . "#c397d8")
	 (300 . "#d54e53")
	 (320 . "goldenrod")
	 (340 . "#e7c547")
	 (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
