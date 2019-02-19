(eval-when-compile
  (require 'use-package))

;;(use-package evil)
(use-package ace-window)
(use-package ag)
(use-package avy
  :bind
  (( "C-j" . avy-goto-word-or-subword-1)
   ("C-c g" . avy-goto-line)))
(use-package beacon  
  :diminish beacon-mode
  :config
  (beacon-mode 1))
(use-package cargo)
(use-package command-log-mode
  :diminish command-log-mode)
(use-package counsel)
(use-package crux
  :config
  (global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line))
(use-package darkokai-theme)
(use-package elpy)
(use-package expand-region
  :bind
  (("C-w" . er/expand-region)))
(use-package exec-path-from-shell)
(use-package flycheck)
(use-package ghc)
(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox t))
(use-package go-add-tags)
(use-package go-eldoc)
(use-package go-mode)
(use-package go-gopath)
(use-package go-stacktracer)
(use-package haskell-mode)
(use-package helm
  :commands
  (helm-mode)
  :bind
  (("M-y" . helm-show-kill-ring)
   ("M-x" . helm-M-x)
   ("M-s s" . helm-occur)
   ("C-c C-h b" . helm-filtered-bookmarks)
   ("C-x C-f" . helm-find-files)
   ("C-x b" . helm-mini)))
(use-package helm-ag
  :bind
  (("M-s a" .  helm-ag)))
(use-package helm-swoop)
(use-package hydra)
(use-package iedit
  :bind
  (("C-c C-i" . iedit-quit)))
(use-package idle-highlight-mode)
(use-package ivy
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d%d)"))
(use-package js2-mode)
(use-package js2-refactor)
(use-package lsp-mode)
(use-package lsp-ui)
(use-package magit)
(use-package moe-theme)
(use-package monokai-theme)
(use-package multiple-cursors
  :bind
  (("C-c m a" . mc/vertical-align)
   ("C-c m s" . mc/mark-next-like-this)
   ("C-c m d" . mc/mark-all-like-this)
   ("C-c m f" . mc/vertical-align)))
(use-package neotree
  :bind
  ([f8] . neotree-toggle))

(use-package powerline)
(use-package pdf-tools
  :ensure)
(use-package keybindings
  :bind
  ("C-c C-p C-f" . projectile-find-file)
  :config
  (projectile-global-mode))
(use-package pug-mode)
(use-package rainbow-delimiters)
(use-package racer)
(use-package rjsx-mode)
(use-package restart-emacs
  :bind
  ("C-c C-r" . restart-emacs))
(use-package rust-mode)
(use-package sublimity
  :bind
  ([f9] . sublimity-mode))
(use-package smartparens)
(use-package smart-mode-line
  :config
  (setq sml/theme 'dark))
(use-package swiper
  :bind
  ("C-c s" . swiper))
(use-package vimish-fold)
(use-package which-key
  :commands
  (which-key-mode)
  :config
  (setq which-key-idle-delay 2.0))
(use-package yasnippet
  :diminish yas
  :bind ("C-c /" . yas-expand)
  :config
  (yas/global-mode 1)
  (load (concat init-dir "snippets/go-snippets/go-snippets.el"))
  (load (concat init-dir "snippets/react-snippets/react-snippets.el"))
  (add-to-list 'yas-snippet-dirs (concat init-dir "snippets")))
(use-package keyfreq
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1))
(use-package htmlize
  :ensure)


;; THINGS TURNED ON
(global-auto-revert-mode 1)
(show-paren-mode 1)
(winner-mode 1)


;; THINGS TURNED OFF
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(put 'narrow-to-region 'disabled nil)
;; THINGS MODIFIED FROM DEFAULT
(windmove-default-keybindings)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(fset 'yes-or-no-p 'y-or-n-p)
(setq tab-width 2)

(setq-default indent-tabs-mode nil)
(setq switch-to-buffer-preserve-window-point t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq inhibit-startup-message t)        
(setq ring-bell-function 'ignore)
(setq linum-format "%d ")
(setq create-lockfiles nil)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; CUSTOM FACES
(custom-set-faces
 '(default ((t (:family "Iosevka" :foundry "CYEL" :slant normal :weight normal :height 113 :width normal))))
 )


;; HOTKEYS
;; Grouped by Functionallity
;; Sub grouped Alphabetically
(global-set-key (kbd "C-z") 'undo)
;; Search
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-c C-b") 'ibuffer)

                                        ; Text Movement or Creation
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c d") 'duplicate-current-line)
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair) ;; The key here is M-". 
(global-set-key (kbd "C-c C-c <tab>") 'indent-buffer)
(global-set-key (kbd "C-q") 'kill-region)
(global-set-key (kbd "C-c a") 'beginning-of-defun)
(global-set-key (kbd "C-c e") 'end-of-defun)
(global-set-key (kbd "C-c h") 'mark-defun)

;; Effect non-interactive changes 
(global-set-key (kbd "C-c C-n") 'linum-mode)


(global-set-key (kbd "C-c j") 'toggle-mark-word-at-point)
;; Start Interactive Systems or Routines
(global-set-key [f2] 'scroll-bar-mod)
(global-set-key [f12] 'calendar)


;; Hydras
(global-set-key (kbd "C-c o") 'org-hydra/body)
(global-set-key (kbd "C-c f") 'vimish-fold-hydra/body)
(global-set-key (kbd "C-c z") 'zoom-hydra/body)
(global-set-key (kbd "C-c i") 'iedit-hydra/body)
;;(global-set-key (kbd "C-c e") 'eval-hydra/body)

(defhydra org-hydra (:color blue)
  "org"
  ("a" org-agenda "agenda")
  ("A" org-agenda-list "agenda-list")
  ("c" org-capture "capture")
  ("l" org-store-link "link")
  ("q" nil "quit"))

(defhydra vimish-fold-hydra (:color blue :columns 3)
  "fold"
  ("a" vimish-fold-avy "avy")
  ("s" vimish-fold-unfold "undo")
  ("S" vimish-fold-unfold-all "undo-all")
  ("d" vimish-fold-delete "del")
  ("D" vimish-fold-delete-all "del-all")
  ("f" vimish-fold "fold")
  ("g" vimish-fold-refold "refold")
  ("G" vimish-fold-refold-all "refold-all")
  ("h" vimish-fold-toggle "toggle" :exit nil)
  ("H" vimish-fold-toggle-all "toggle-all" :exit nil)
  ("j" vimish-fold-next-fold "down" :exit nil)
  ("k" vimish-fold-previous-fold "up" :exit nil)
  ("q" nil "quit"))

(defhydra zoom-hydra ()
  "zoom"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("o" (text-scale-set 0) "reset")
  ("0" (text-scale-set 0) :bind nil :exit t)
  ("1" (text-scale-set 0) nil :bind nil :exit t))



(defhydra iedit-hydra ()
  "iedit"
  ("h" (iedit-mode (digit-argument 1)) "one")
  ("j" (iedit-mode) "all" :exit t)
  ("k" (progn
         (iedit-mode)
         (iedit-restrict-function)) "func")
  ("p" (iedit-expand-up-to-occurrence) "up")
  ("n" (iedit-expand-down-to-occurrence) "down"))


(defhydra eval-hydra (:color blue)
  "evals"
  ("a" (eval-last-sexp) "sexp")
  ("s" (eval-region) "region")
  ("d" (eval-defun) "defun")
  ("f" (eval-buffer) "buffer"))  




;;############################################
(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

                                        ;############################################
(defun duplicate-current-line (&optional n)
  "duplicate current line, make more than 1 copy given a numeric argument"
  (interactive "p")
  (save-excursion
    (let ((nb (or n 1))
    	  (current-line (thing-at-point 'line)))
      ;; when on last line, insert a newline first
      (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
    	(insert "\n"))
      
      ;; now insert as many time as requested
      (while (> n 0)
    	(insert current-line)
    	(decf n)))))

                                        ;######################################################

(defun toggle-mark-word-at-point ()
  (interactive)
  (if hi-lock-interactive-patterns
      (unhighlight-regexp (car (car hi-lock-interactive-patterns)))
    (highlight-symbol-at-point)))
(global-set-key (kbd "C-.") 'toggle-mark-word-at-point)

(fset 'kill_line_no_kill_ring
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 1 67108896 5 backspace] 0 "%d")) arg)))



(setq tab-width 2)


