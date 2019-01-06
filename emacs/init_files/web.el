(require 'pug-mode)

(setq pug-tab-width 2)
(add-hook 'css-mode-hook #'company-mode)


;; This section is for web surfing

(defun my/eww-hook ()
  (hl-line-mode))

(add-hook 'eww-mode-hook #'my/eww-hook)

