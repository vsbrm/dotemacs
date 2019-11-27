;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable startup message
(setq inhibit-startup-message t)

;; Exotica theme
(use-package exotica-theme
  :ensure t
  :config
  (load-theme 'exotica t))

;; Modeline configuration
(use-package spaceline
  :ensure t)

(use-package spaceline-config
  :ensure spaceline
  :init (setq powerline-default-separator 'slant)
  :config
  (spaceline-emacs-theme))

;; Hide toolbar
(tool-bar-mode 0)

;; Hide top bar
(menu-bar-mode 0)

;; Hide scrollbar
(scroll-bar-mode 0)

;; Set default font
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 120
                    :weight 'normal
                    :width 'normal)

(provide 'config-visual)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end visual setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

