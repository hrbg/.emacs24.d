; Avdi Grimm's Emacs 24 Configuration

;; Directories and file names
(setq hrbg-emacs-init-file (or load-file-name buffer-file-name))
(setq hrbg-emacs-config-dir
      (file-name-directory hrbg-emacs-init-file))
(setq user-emacs-directory hrbg-emacs-config-dir)
(setq hrbg-elisp-dir (expand-file-name "elisp" hrbg-emacs-config-dir))
(setq hrbg-elisp-external-dir
      (expand-file-name "external" hrbg-elisp-dir))
(setq hrbg-init-dir
      (expand-file-name "init.d" hrbg-emacs-config-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p hrbg-init-dir)
    (dolist (file (directory-files hrbg-init-dir t "\\.el$"))
      (load file)))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" hrbg-emacs-config-dir))
(load custom-file)


(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))


