(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(require 'use-package)

(use-package init-loader
  :ensure t
  :init
  (defvar my-cache-dir "~/.emacs.cache")
  (init-loader-load))

