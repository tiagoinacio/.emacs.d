;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))

(setq enable-recursive-minibuffers t)

;; save bookmarks
(setq bookmark-default-file "~/.emacs.d/bookmarks"
      bookmark-save-flag 1) ;; save after every change

;; Line Breaking
(add-hook 'text-mode-hook (lambda ()
                            (turn-on-auto-fill)
                            (fci-mode)
                            (set-fill-column 80)))
(add-hook 'markdown-mode-hook (lambda ()
                            (turn-on-auto-fill)
                            (fci-mode)
                            (set-fill-column 80)))

;; Dont move cursor back
(setq evil-move-cursor-back nil)

;; Remember cursor position in files
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Remove scrollbar
(scroll-bar-mode -1)

;; File Types
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(setq mode-line-format nil)

;; Prompts Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

;; Prevent annoying beep on errors
(setq visible-bell t)

;; Highlight regions and add special behaviors to regions
(setq transient-mark-mode t)

;; Remove whitespace on save
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Beyond EOL
(setq evil-move-beyond-eol nil)


;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
	  (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
		  '(lambda ()
			 (let ((buffer "*Completions*"))
			   (and (get-buffer buffer)
					(kill-buffer buffer)))))
