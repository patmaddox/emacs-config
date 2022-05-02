;; straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; packages
(straight-use-package 'elixir-mode)
(straight-use-package 'ox-asciidoc)
(straight-use-package 'ox-hugo)

;; org / agenda
(require 'ol)

(org-link-set-parameters "hook"
                         :follow #'org-hook-open)

(defun org-hook-open (path _)
  "Visit hook link on PATH"
  (shell-command (concat "/usr/bin/open hook:" path)))
