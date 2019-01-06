(setq exec-path (append exec-path '("/home/bjr/go/bin")))
(setq exec-path (append exec-path '("/usr/local/go/bin")))
(use-package go-mode)  
(use-package company-go)
(use-package go-add-tags)
(use-package go-eldoc
  :diminish eldoc-mode)
(use-package go-gopath)

(add-hook 'go-mode-hook
          (lambda ()
            (company-mode)
            (add-hook 'before-save-hook 'gofmt-before-save)
            (set (make-local-variable 'company-backends) '(company-go))
            (go-eldoc-setup)))
