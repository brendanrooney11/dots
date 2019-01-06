(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))

;;Package Install
;;Link melpa package repository to package index
(require 'package)

(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; LIST OF PACKAGES REQUIRED
(defvar local-packages '(ace-window
                         ag
			 avy ;; Jump to things
			 beacon                         
			 cargo
                         cider
                         command-log-mode
			 company
                         company-go
			 company-lsp
                         company-tern
                         counsel
			 crux ;; Collection of usefull extensions
			 darkokai-theme
			 elpy
			 expand-region
                         exec-path-from-shell
			 flycheck
			 ghc
                         gruvbox-theme
                         go-add-tags
                         go-eldoc
                         go-mode
                         go-gopath
                         go-stacktracer
			 haskell-mode
			 helm
			 helm-ag
			 helm-swoop
                         hydra
			 iedit ;; Multi-cursor support
			 idle-highlight-mode
                         ivy
                         js2-mode
                         js2-refactor
                         keyfreq
			 lsp-mode
			 lsp-ui
			 magit
			 moe-theme
			 monokai-theme
			 multiple-cursors
			 neotree			 
			 pug-mode
			 powerline
			 projectile
			 rainbow-delimiters
			 racer
                         rjsx-mode
			 restart-emacs
			 rust-mode                         
			 sublimity
                         smartparens
                         smart-mode-line
                         swiper
			 use-package
                         vimish-fold
			 which-key
                         yasnippet))

;;UNINSTALLED-PACKAGES CREATES A LIST OF PACKAGES THAT NEED TO BE INSTALLED
(defun uninstalled-packages (packages)
  (delq nil
	(mapcar (lambda (p) (if (package-installed-p p nil) nil p)) packages)))

;; INSTALLS ALL PACKAGES IN LOCAL-PACKAGES THAT ARE NOT ALREADY INSTALLED
(let ((need-to-install (uninstalled-packages local-packages)))
  (when need-to-install
    (progn
      (package-refresh-contents)
      (dolist (p need-to-install)
        (package-install p)))))

(when (not package-archive-contents)
  (package-refresh-contents))

;; OTHER INIT FILES

;; FILES ARE ALL LOCATED IN ~/.emacs.d/init_files/
(load "~/.emacs.d/init_files/emacs-lisp.el")
(load "~/.emacs.d/init_files/global.el")
(load "~/.emacs.d/init_files/go.el")
(load "~/.emacs.d/init_files/company.el")
;;(load "~/.emacs.d/init_files/haskell_development.el")
(load "~/.emacs.d/init_files/js.el")
(load "~/.emacs.d/init_files/lisp.el")
(load "~/.emacs.d/init_files/notes.el")
(load "~/.emacs.d/init_files/org.el")
(load "~/.emacs.d/init_files/python.el")
(load "~/.emacs.d/init_files/web.el")

;;(load "~/.emacs.d/init_files/rust_devlopment.el")

;; hindent
;; irony
;; minimap
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8a9be13b2353a51d61cffed5123b157000da0347c252a7a308ebc43e16662de7" "dd43ce1171324a8e47f9e4ca9f49773c4b4960706171ab951130c668adc59f53" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" default)))
 '(package-selected-packages
   (quote
    (json-mode htmlize ace-window pug-mode which-key use-package sublimity restart-emacs rainbow-delimiters racer projectile powerline neotree multiple-cursors monokai-theme moe-theme magit lsp-ui iedit ido-completing-read+ idle-highlight-mode helm-swoop helm-ag ghc expand-region evil elpy darkokai-theme crux company-lsp cargo beacon avy ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "CYEL" :slant normal :weight normal :height 113 :width normal))))
 '(hl-line ((t (:background "RoyalBlue4")))))

