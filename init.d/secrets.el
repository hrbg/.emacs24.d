(setq hrbg-secrets-file
      (expand-file-name "secrets.el" hrbg-emacs-config-dir))

(when (file-exists-p hrbg-secrets-file)
  (load hrbg-secrets-file))
