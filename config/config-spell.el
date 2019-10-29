;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO: compose header
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Set hunspell as a spellchecking backend
(when (executable-find "hunspell")
  (setq-default ispell-program-name "hunspell")
  (setq ispell-really-hunspell t))

(provide 'config-spell)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end spell setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
