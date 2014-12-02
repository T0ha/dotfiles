(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
(add-to-list 'load-path "~/.emacs.d/site-lisp/slime/")  ; your SLIME directory
(require 'slime)
(slime-setup)


(add-to-list 'load-path "~/.emacs.d/site-lisp/")
;(require 'web-mode)
;(require 'php-mode)
;(load-library "python-init")
(load-library "scala-init")
;(load-library "erlang-init")

;(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete/")
;(require ‘auto-complete-config)
;(global-auto-complete-mode t)

(setq load-path (cons "/usr/share/emacs/site-lisp/ess" load-path))
(require 'ess-site)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default-directory "/home/t0ha/projects/")
 '(current-language-environment "UTF-8")
 '(ecb-auto-update-methods-after-save t)
 '(ecb-options-version "2.40")
 '(ede-project-directories (quote ("/home/t0ha/git/d4d" "/home/t0ha/git/asudd_restarter/asudd_restarter")))
 '(python-python-command "/usr/bin/python2")
 '(setq tab-always-indent t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq tramp-default-method "ssh")

(global-set-key (kbd "C-c 3") 
		'comment-or-uncomment-region)
