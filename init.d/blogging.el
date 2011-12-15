;; (require 'netrc)
;; (require 'org2blog)
;; (setq hrbg-netrc-vc (netrc-machine (netrc-parse "~/.netrc") "virtuouscode" t))
;; (setq org2blog/wp-blog-alist
;;       '(("virtuouscode"
;; 	 :url "http://avdi.org/devblog/xmlrpc.php"
;; 	 :username (netrc-get hrbg-netrc-vc "login")
;; 	 :password (netrc-get hrbg-netrc-vc "password")
;; 	 :tags-as-categories nil)))

