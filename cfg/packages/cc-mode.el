(require 'cc-mode)
(setq c-default-style "linux" c-basic-offset 4)
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(c-add-style "my-c-style" '((c-continued-statement-offset 4)))

;; long method names
(defun my-indent-setup ()
  (c-set-offset 'arglist-intro '+))
    (add-hook 'java-mode-hook 'my-indent-setup)
