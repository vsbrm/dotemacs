;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO: compose header
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set hunspell as a spellchecking backend
(when (executable-find "hunspell")
  (setq-default ispell-program-name "hunspell")
  (setq ispell-really-hunspell t)
  (setq ispell-dictionary "english"))

;; Flyspell
(use-package flyspell
  :ensure t
  :config
  (setq flyspell-mode 1)
  )

(provide 'config-spell)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end spell setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
