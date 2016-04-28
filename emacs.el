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

(defun goto-match-paren (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert %.
vi style of % jumping to matching brace."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; Function keys
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'next-error)

;; Don't prompt for compile command each time
(setq-default compilation-read-command nil)

;; Spellcheck comments
(add-hook 'c++-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            ))
;; restricts spellcheck to comments
(setq flyspell-prog-text-faces '(font-lock-comment-face font-lock-doc-face))

;; Common packages
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
