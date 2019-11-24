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

;; Show column number
(setq column-number-mode t)

;; Highlight line
(global-hl-line-mode t)

;; Delete all selected text at once
(delete-selection-mode t)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

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

;; Code navigation with tags
(use-package counsel-etags
  :ensure t
  :bind (("C-]" . counsel-etags-find-tag-at-point))
  :init
  (add-hook 'prog-mode-hook
        (lambda ()
          (add-hook 'after-save-hook
            'counsel-etags-virtual-update-tags 'append 'local)))
  :config
  (setq counsel-etags-update-interval 60)
  (add-to-list 'counsel-etags-ignore-directories "build")
  ;; Don't ask before rereading the TAGS files if they have changed
  (setq tags-revert-without-query t)
  ;; Don't warn when TAGS files are large
  (setq large-file-warning-threshold nil)
  ;; Setup auto update now
  (add-hook 'prog-mode-hook
            (lambda ()
              (add-hook 'after-save-hook
                        'counsel-etags-(vector )irtual-update-tags 'append 'local))))

;; projectile
(use-package projectile
  :ensure t
  :bind ("C-c p" . projectile-command-map)
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'ivy))

;; git
(use-package magit
  :ensure t
  :init
  (progn
    (bind-key "C-x g" 'magit-status)
    ))

(setq magit-status-margin
      '(t "%Y-%m-%d %H:%M " magit-log-margin-width t 18))

(use-package git-gutter
  :ensure t
  :init
  (global-git-gutter-mode +1))

(use-package git-timemachine
  :ensure t
  )

;; Scroll configuration
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(provide 'config-editor)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; end editor setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
