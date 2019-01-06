(use-package slime
  :hook (lisp-mode inferior-lisp-mode)
  :bind
  (("C-c t" . slime-selector))
  :config
  (setq inferior-lisp-program "sbcl"
        slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
  (slime-setup '(slime-fancy slime-tramp slime-asdf))
  (slime-require :swank-listener-hooks)   )

  
