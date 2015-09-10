(require 'doxymacs)

(add-hook 'c-mode-common-hook'doxymacs-mode)

 (defun my-doxymacs-font-lock-hook ()
   (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
     (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

GENERATE_TAGFILE = ~/tmp/doxy.tag

(evil-leader/set-key "do" 'doxymacs-insert-function-comment)

;; press enter and insert an asterisk automatically
(defun my-javadoc-return ()
  "Advanced `newline' command for Javadoc multiline comments.
Insert a `*' at the beggining of the new line if inside of a comment."
  (interactive "*")
  (let* ((last (point))
         (is-inside
          (if (search-backward "*/" nil t)
              ;; there are some comment endings - search forward
              (search-forward "/*" last t)
            ;; it's the only comment - search backward
            (goto-char last)
            (search-backward "/*" nil t))))

    ;; go to last char position
    (goto-char last)

    ;; the point is inside some comment, insert `*'
    (if is-inside
        (progn
          (newline-and-indent)
          (insert "*"))
      ;; else insert only new-line
      (newline-and-indent))))

(add-hook 'c++-mode-hook
          (lambda ()
            (local-set-key (kbd "<RET>") 'my-javadoc-return)))
