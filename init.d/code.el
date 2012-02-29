;; Line numbers
(add-hook 'hrbg-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Smart tab
(require 'smart-tab)
(global-smart-tab-mode 1)

;; Coffescript indent with 2 spaces
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))


;; http://pablo.rauzy.name/init.el.html
;; comment-or-uncomment-region-or-line
(defun comment-or-uncomment-region-or-line ()
  "Like comment-or-uncomment-region, but if there's no mark \(that means no
region\) apply comment-or-uncomment to the current line"
  (interactive)
  (if (not mark-active)
      (comment-or-uncomment-region
       (line-beginning-position) (line-end-position))
    (if (< (point) (mark))
        (comment-or-uncomment-region (point) (mark))
      (comment-or-uncomment-region (mark) (point)))))
(global-set-key (kbd "C-/") 'comment-or-uncomment-region-or-line)


(require 'yaml-mode)
   (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
