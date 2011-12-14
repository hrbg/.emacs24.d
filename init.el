;; http://avdi.org/devblog/2011/09/08/emacs-reboot-4-customizing-customization/
(setq hrbg-emacs-init-file load-file-name)
(setq hrbg-emacs-config-dir
      (file-name-directory hrbg-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" hrbg-emacs-config-dir))
(load custom-file)

;;
;; http://avdi.org/devblog/2011/09/10/emacs-reboot-5/
(setq user-emacs-directory hrbg-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))
