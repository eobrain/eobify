;; See README.md for description

;; Filter dired
(add-hook 'dired-load-hook '(lambda () (require 'dired-x)))
(setq dired-omit-mode t)

;; Copy/Move to other dired
(setq dired-dwim-target t)

;; No indentation tabs
(setq-default indent-tabs-mode nil)

;; CONTROL-Z for undo
(global-set-key (kbd "C-z") 'undo)
