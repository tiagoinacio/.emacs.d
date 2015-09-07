(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'find-file-hook 'flymake-find-file-hook)

(setq flycheck-check-syntax-automatically '(save mode-enabled))
(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers))
(setq flycheck-checkers (delq 'html-tidy flycheck-checkers))
(setq flycheck-standard-error-navigation nil)

(global-flycheck-mode t)

(add-hook 'js-mode-hook
          (lambda () (flycheck-mode t)))

;; flycheck errors on a tooltip (doesnt work on console)
(when (display-graphic-p (selected-frame))
    (custom-set-variables
      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
