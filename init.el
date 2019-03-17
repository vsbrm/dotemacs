;; TODO: compose file header. Add license.

;; Check the version
(let ((required_version "26"))
  (when (version< emacs-version required_version)
    (error "Emacs version %s is detected. At least Emacs %s is required"
           emacs-version
           required_version)))

;; Install packages
(setq
 package-selected-packages
 '(exotica-theme  ;; my favorite theme
   f)) ;; package to wirk with files

(require 'package)
(require 'bytecomp)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-selected-packages)
  (when (and (assq package package-archive-contents)
             (not (package-installed-p package)))
(package-install package t)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set up directories

(require 'f)

(defvar config-dir (f-expand "config" user-emacs-directory)
  "This is directory where all the configuration files are kept.")

(add-to-list 'load-path config-dir)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'config-visual) ;; visual parameters
