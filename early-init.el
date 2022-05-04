;; straight.el says to do this
(setq package-enable-at-startup nil)

;; org / agenda config
(setq org-agenda-files
      '("~/org"))
(setq org-todo-keywords
      '((sequence "NEXT" "TODO" "WAIT" "|" "DONE")))
