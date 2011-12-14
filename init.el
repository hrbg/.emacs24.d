;; http://avdi.org/devblog/2011/09/08/emacs-reboot-4-customizing-customization/
(setq hrbg-emacs-init-file load-file-name)
(setq hrbg-emacs-config-dir
      (file-name-directory hrbg-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" hrbg-emacs-config-dir))
(load custom-file)