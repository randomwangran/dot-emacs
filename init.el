;;; init.el --- emacs initialisation top-level

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

;; -----------------------------------------------------------------------------
;;; Add personal lisp directory to the search path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp/tree-mode"))

;; -----------------------------------------------------------------------------
;;; Load the quick initialisation file
(load "qinit")

;; -----------------------------------------------------------------------------
;;; Package initialisation
(load "init-package")

;; -----------------------------------------------------------------------------
;;; A modern list library
(use-package dash
  :ensure t)

;; -----------------------------------------------------------------------------
;;; Application generated customisations
(setq inhibit-default-init t)
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file)

;; -----------------------------------------------------------------------------
;;; Common initialisation settings
(load "init-which-key")
(load "init-frames")
(load "init-display")
(load "init-movement")
(load "init-common")
(load "init-rectangles")
(load "init-speedbar")
(load "init-editing")
(load "init-man")

;; -----------------------------------------------------------------------------
;;; Load personal information

(load "personal/init-personalisation")

;; -----------------------------------------------------------------------------
;;; Personal key-map
(load "init-my-map")

;; -----------------------------------------------------------------------------
;;; Enhanced in-buffer completion packages
(load "init-company")

;; -----------------------------------------------------------------------------
;;; Mouse configuration
(load "init-mouse")

;; -----------------------------------------------------------------------------
;;; Window navigation
(load "init-windows")

;; -----------------------------------------------------------------------------
;;; Controls for backup files
(load "init-backups")

;; -----------------------------------------------------------------------------
;;; dired+ --- Directory display and manipulation
(load "init-dired+")

;; -----------------------------------------------------------------------------
;;; tramp --- Remote file editing
(load "init-tramp")

;; -----------------------------------------------------------------------------
;;; Isearch configuration and extensions
(load "init-isearch")

;; -----------------------------------------------------------------------------
;;; flyspell: on-the-fly spell checking
(load "init-flyspell")

;; -----------------------------------------------------------------------------
;;; Calendar and Diary
(autoload 'calendar "init-diary" "Calendar/Diary" t)
(autoload 'autoload-init-diary "init-diary" "Calendar/Diary" t)
(autoload 'my-open-calendar "init-diary" "Calendar/Diary" t)

;; -----------------------------------------------------------------------------
;;; OpenFOAM settings
(load "init-OpenFOAM")

;; -----------------------------------------------------------------------------
;;; ELisp settings
(load "init-elisp")

;; -----------------------------------------------------------------------------
;;; GOOFIE settings
(load "init-goofie")

;; -----------------------------------------------------------------------------
;;; Nim settings
;;(load "init-nim")

;; -----------------------------------------------------------------------------
;;; Haskell settings
;;(load "init-haskell")

;; -----------------------------------------------------------------------------
;;; Rust settings
;;(load "init-rust")

;; -----------------------------------------------------------------------------
;;; You Complete Me settings
(load "init-ycmd")

;; -----------------------------------------------------------------------------
;;; OpenSCAD settings
(load "init-scad")

;; -----------------------------------------------------------------------------
;;; LaTeX settings
(load "init-latex")

;; -----------------------------------------------------------------------------
;;; Print settings
(load "init-printing")

;; -----------------------------------------------------------------------------
;;; Thing at point settings
(load "init-thingatpt")

;; -----------------------------------------------------------------------------
;;; Bookmark settings
(load "init-bookmark")

;; -----------------------------------------------------------------------------
;;; Ediff settings
(load "init-ediff")

;; -----------------------------------------------------------------------------
;;; Eshell-mode settings
(load "init-eshell")

;; -----------------------------------------------------------------------------
;;; Shell-mode settings
(load "init-shell")

;; -----------------------------------------------------------------------------
;;; Magit: Emacs front-end for GIT repositories
(load "init-magit")

;; -----------------------------------------------------------------------------
;;; gnuplot-mode
(load "init-gnuplot")

;; -----------------------------------------------------------------------------
;;; Org-mode: organiser
(load "init-org")

;; -----------------------------------------------------------------------------
;;; Wiki modes: modes for typesetting WIKI pages
(load "init-wiki")

;; -----------------------------------------------------------------------------
;;; outline-mode: outlining and folding
(load "init-outline")

;; -----------------------------------------------------------------------------
;;; Insideous Big Brother Database
(load "init-bbdb")

;; -----------------------------------------------------------------------------
;;; Email client: Wanderlust
(load "init-wl")

;; -----------------------------------------------------------------------------
;;; wget: Asynchronous download of files
(load "init-wget")

;; -----------------------------------------------------------------------------
;;; Web-browser: general
(load "init-www")

;; -----------------------------------------------------------------------------
;;; openwith: Open files using specified application
(load "init-openwith")

;; -----------------------------------------------------------------------------
;;; oprofile: An oprofile callgraph viewer
;;(load "init-oprofile")

;; -----------------------------------------------------------------------------
;;; Tags: Initialise all things tags related
(load "init-tags")

;; -----------------------------------------------------------------------------
;;; Emms: Emacs Multimedia System
(autoload 'emms-browser "init-emms" "Emms" t)
(autoload 'emms-streams "init-emms" "Emms" t)

;; -----------------------------------------------------------------------------
;;; Dictionary and thesaurus
(load "init-dictionary")

;; -----------------------------------------------------------------------------
;;; Yet another snippets extension
;;(load "init-yasnippet")

;; -----------------------------------------------------------------------------
;;; Do Re Mi: Incremental change using arrow keys or mouse wheel
(load "init-doremi")

;; -----------------------------------------------------------------------------
;;; Buffer selection menu
(load "init-ibuffer")

;; -----------------------------------------------------------------------------
;;; ido: Interactive-do minibuffer completion packages
;;(load "init-ido")

;; -----------------------------------------------------------------------------
;;; icicles: Enhanced minibuffer completion packages
;;(load "init-icicles")

;; -----------------------------------------------------------------------------
;;; Ivy: Enhanced minibuffer completion packages
(load "init-ivy")

;; -----------------------------------------------------------------------------
;;; Projectile: git project management
(load "init-projectile")

;; -----------------------------------------------------------------------------
;;; E2WM
(load "init-e2wm")

;; -----------------------------------------------------------------------------
;;; EXWM
(load "init-exwm")

;; -----------------------------------------------------------------------------
;;; Client-server operation
(load "init-server")

;; -----------------------------------------------------------------------------
;;; Enable all save all histories function
(load "init-history-saving")

;; -----------------------------------------------------------------------------
;;; Run-time Initialisations
;; Initialisations which must be done at run-time, not built into eemacs:
;;     Windowing system properties which must be read at run-time
;;     Functions involving histories which must be read at run-time
(load "init-runtime" nil t) ;; Include in init-eemacs

;; -----------------------------------------------------------------------------
;;; init.el ends here
