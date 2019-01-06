(defvar notes-dir "/home/bjr/documents/notes/public")
(defvar dump-file "/home/bjr/documents/notes/public/dump.org")

;; Where to put notes when capturing them
(defun note-dump ()
  (interactive)
  (find-file dump-file))

(defun notes-search ()
  (interactive)
  (helm-ag notes-dir))

(defun notes-goto-file ()
  (interactive)
  (dired notes-dir))


(defhydra notes-hydra (:color blue)
  "notes"
  ("s" notes-search "search")
  ("g" notes-goto-file "goto")
  ("d" note-dump "dump"))

(global-set-key (kbd "C-c n") 'notes-hydra/body)
