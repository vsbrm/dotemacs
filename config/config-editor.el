;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO: compose header
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Easily undo/redo
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

;;Brackets matching
 (use-package smartparens
   :ensure t)

(use-package smartparens-config
  :ensure smartparens
  :config (progn (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)

(provide 'config-editor)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end editor setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
