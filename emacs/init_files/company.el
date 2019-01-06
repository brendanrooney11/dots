(use-package company
  :demand t
  :commands company-mode
  :config  
  (setq company-global-modes '(not term-mode))  
  (setq company-minimum-prefix-length 2
        company-selection-wrap-around t
        company-show-numbers t
        company-tooltip-align-annotations t
        company-require-match nil
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-tooltip-limit 20
        company-idle-delay .3
        company-echo-delay 0)
  (setq company-transformers '(company-sort-by-occurrence))
  :diminish company-mode)










