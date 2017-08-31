;; See README.md for description

;; Copy/Move to other dired
(setq dired-dwim-target t)

;; No indentation tabs
(setq-default indent-tabs-mode nil)

(setq-default fill-column 80)

;; CONTROL-Z for undo
(global-set-key (kbd "C-z") 'undo)

;; Function keys
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'next-error)

;; Don't prompt for compile command each time
(setq-default compilation-read-command nil)

;; In go, run gofmt before save
(add-hook 'before-save-hook #'gofmt-before-save)
