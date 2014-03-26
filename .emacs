;;;; Stacey's .emacs file for emacs24
;; Stacey Geoffrey Tay
;; 30th Oct 2013

;;;; For Marmalade
;; Added on 30th Oct 2013
;; http://marmalade-repo.org
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;;; Color theme stuff
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "/Users/staceytay/.emacs.d/replace-colorthemes"))

;;;; Stuff done to emacs24
;;; Via Marmalade
;; Installed haskell-mode
;; Installed tuareg via
;; Installed python-mode
;; Installed pymacs
;; Installed flymake
;; Installed auto-complete-mode
;; Installed flymake-tuareg
;; Installed flymake-haskell
;; Installed js2
;; Installed quack
;; Installed rainbow-delimiters
;;; Manually
;; Installed Emacs 24 color themes from https://github.com/emacs-jp/replace-colorthemes

;; Turning on flyspell automatically for text mode
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(add-hook 'message-mode-hook 'turn-on-flyspell)
;; (add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(add-hook 'tuareg-mode-hook 'flyspell-prog-mode)
(add-hook 'haskell-mode-hook 'flyspell-prog-mode)
(add-hook 'python-mode-hook 'flyspell-prog-mode)
;; (add-hook 'java-mode-hook 'flyspell-prog-mode)

;; Settings for auto-complete-mode
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict/")
(ac-config-default)
;; Workaround for having AC in flyspell-mode
(ac-flyspell-workaround)

;; Turning on js2 automatically
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Turning on markdown-mode automatically
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; Color theme
;; (load-theme 'arjen t)
;; (load-theme 'billw t)
;; (load-theme 'blue-sea t)
;; (load-theme 'calm-forest t)
(load-theme 'charcoal-black t)
;; (load-theme 'clarity t)
;; (load-theme 'goldenrod t)
;; (load-theme 'lawrence t)
;; (load-theme 'ld-dark t)
;; (load-theme 'pok-wob t)
;; (load-theme 'retro-orange t)
;; (load-theme 'subdued t)

;; Display column numbers
(column-number-mode)
;; Bind M-x key
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; Bind C-w key to backward-kill-word
(global-set-key "\C-w" 'backward-kill-word)
;; Bind kill-region key
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
;; Disable menu bar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Loading Coq and Proof General
(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)

;;;; This Custom thing should be because of the color-themes package.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-safe-themes (quote ("73e09ba6f23a9b3aeedb3ee8589da74182b644c169daa62c4454eac73eea610a" default)))
 '(org-agenda-files nil)
 '(quack-programs (quote ("mzscheme" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Scheme config
;; http://caisah.info/emacs-for-sicp-scheme/
;; Enable Quack mode
;; The binary of your interpreter
;; (setq scheme-program-name "scheme")
;; This hook lets you use your theme colours instead of quack's ones.
(defun scheme-mode-quack-hook ()
  (require 'quack)
  (setq quack-fontify-style 'emacs
	quack-default-program "scheme"))
(add-hook 'scheme-mode-hook 'scheme-mode-quack-hook)
;; Rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'scheme-mode-hook 'rainbow-delimiters-mode)
;; Highlight parentheses for scheme.
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)
