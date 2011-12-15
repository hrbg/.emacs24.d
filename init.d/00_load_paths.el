;; Add my personal elisp directory to load path
(add-to-list 'load-path hrbg-elisp-dir)

; Add external projects to load path
(dolist (project (directory-files hrbg-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

