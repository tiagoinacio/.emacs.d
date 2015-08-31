;; (custom-set-variables
;;   '(helm-ag-base-command "ag %s -i --nocolor --nogroup --hidden
;;       \ --ignore .git
;;       \ --ignore .svn
;;       \ --ignore .hg
;;       \ --ignore .DS_Store"))
(custom-set-variables
  '(helm-ag-base-command "ag --ignore-case -C 4 --nofilename"))
