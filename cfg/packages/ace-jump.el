(require 'ace-jump-mode)
(setq ace-jump-word-mode-use-query-char nil)
(evil-leader/set-key "/" 'evil-ace-jump-word-mode)
(evil-leader/set-key "se" 'evil-search-forward)
