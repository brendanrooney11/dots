(setq exec-path (append exec-path '("/home/bjr/programs/leiningen")))
(use-package cider)

(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

