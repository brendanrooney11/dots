(setq org-log-done 'time)
(setq org-export-coding-system 'utf-8)


(setq org-agenda-files '("~/documents/agenda/agenda.org"
			 "~/documents/agenda/reminders.org"
			 "~/documents/agenda/inbox.org"))

;; Capture Templates
(setq org-capture-templates
     '(("t" "Todo" entry
	 (file "~/documents/agenda/inbox.org")
	 "* TODO %^{TODO}  :%?:\n  %i")
	("l" "Todo with link" entry
	 (file "~/documents/agenda/inbox.org")
	 "* TODO %?\n  %i\n  %a")
	("e" "Event" entry
	 (file "~/documents/agenda/inbox.org")
	 "* TODO %^{TODO}  :%?:\n SCHEDULED:%^T")
	("d" "Deadline" entry
	 (file "~/documents/agenda/inbox.org")
	 "* TODO %^{TODO}  :%?:\n DEADLINE:%^T")
	("i" "Idea" entry
	 (file "~/documents/notes/ideas.org")
	 "* %^{IDEA}")
	("r" "respond" entry
	 (file "~/documents/agenda/inbox.org")
	 "* TODO %^{TODO} :%?:\n SCHEDULED:%^T")
        ("n" "Note" entry
         (file "~/documents/notes/notes.org")
         "* %^{NOTE} :%?:\n %i")
	))

(setq org-refile-targets '(("~/documents/agenda/agenda.org" :level . 2)
                           ("~/documents/agenda/reminders.org" :level . 2)))                          

;; (defun contextual-refile ()
;;     (interactive)
;;     (setq buff buffer-name)
;;     (if (eq buff "notes.org")
;;         (setq org-refile-targets
;;     (if (eq buff "
;;     )

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "EVENT(e)" "|" "DONE(d)" "CANCELLED(c)")))

;; Agenda View
(setq org-agenda-dim-blocked-tasks nil)
(setq org-agenda-compact-blocks t)

;; Set the default org columns view
(setq org-columns-default-format "%50ITEM(Task) %10CLOCKSUM %16TIMESTAMP_IA")

;; Set-up custom org agenda views
(setq org-agenda-custom-commands
      '(("p" . "Sort By Project")
	("pP" "Project search" org-tags-view "")
	("x" "Agenda" ((agenda "") (alltodo))
	 ((org-agenda-ndays 10)
	  (org-agenda-start-on-weekday nil)
	  (org-agenda-start-day "-1d")
	  (org-agenda-start-with-log-mode t)
	  (org-agenda-log-mode-items '(closed clock state)))
	 )))


