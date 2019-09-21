;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO: compose header
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Easily undo/redo
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

;; Display line numbers
(global-display-line-numbers-mode)

;; Highlight line
(global-hl-line-mode t)

;; Delete all selected text at once
(delete-selection-mode t)

;; Use spaces instead of tabs
(setq indent-tabs-mode nil)

;; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; highlight brackets if visible, else entire expression
(setq show-paren-style 'mixed)

;;Brackets matching
 (use-package smartparens
   :ensure t)

(use-package smartparens-config
  :ensure smartparens
  :config (progn (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)

;; Fast windows switching
(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))

;; Help with key combination
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; Autocompletion frontend
(use-package company
  :ensure t
  :config
  (global-company-mode))

;; Snippets
(use-package yasnippet
  :ensure t
  :config (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)

(provide 'config-editor)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end editor setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
