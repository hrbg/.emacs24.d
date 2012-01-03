;; Line numbers
(add-hook 'hrbg-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Smart tab
(require 'smart-tab)
(global-smart-tab-mode 1)
