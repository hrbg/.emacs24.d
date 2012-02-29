;; FIXME: Interpolation
;; (defun ruby-interpolate ()
;;   "In a double quoted string, interpolate."
;;   (interactive)
;;   (insert "#")
;;   (when (and
;;          (looking-back "\".*")
;;          (looking-at ".*\""))
;;     (insert "{}")
;;     (backward-char 1)))

;; (define-key ruby-mode-map (kbd "#") 'ruby-interpolate)

;; Ruby mode hooks
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '(".rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '(".gemspec\\'" . ruby-mode))
