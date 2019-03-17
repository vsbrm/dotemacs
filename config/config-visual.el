;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable startup message
;;(setq inhibit-startup-message t)

;; Exotica theme
(load-theme 'exotica t)

;; Hide toolbar
;;(tool-bar-mode 0)

;; Display line numbers
(global-display-line-numbers-mode)

;; Highlight line
(global-hl-line-mode t)

;; turn on highlight matching brackets when cursor is on one

;; Highlight line
(global-hl-line-mode t)

;; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; highlight brackets if visible, else entire expression
(setq show-paren-style 'mixed)

;; Change mode line
;;(use-package smart-mode-line
;;  :ensure t
;;  :config
;;  (setq sml/theme 'respectful)
;;  (sml/setup))

(provide 'config-visual)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end visual setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

