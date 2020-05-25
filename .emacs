;;; I prefer cmd key for meta

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("melpa" . "http://melpa.milkbox.net/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (pdf-tools web-mode ein ipython-shell-send flymake-python-pyflakes flycheck elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; python settings
; should read about elpy: https://github.com/jorgenschaefer/elpy
(elpy-enable)
(setq inhibit-startup-screen t)
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

;; web-mode setting
;; use web-mode when editting files with certain expand name
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

;; indent setting
(setq web-mode-markup-indent-offset 2)
;; CSS offset indentation
(setq web-mode-css-indent-offset 2)
;; Script/code offset indentation (for JavaScript, Java, PHP, Ruby, Go, VBScript, Python, etc.)
(setq web-mode-code-indent-offset 2)

;; Change face color
(set-face-attribute 'web-mode-css-rule-face nil :foreground "Pink3")

;; Auto-pairing
(setq web-mode-enable-auto-pairing t)
;; CSS colorization
(setq web-mode-enable-css-colorization t)
;; Highlight current HTML element (see web-mode-current-element-highlight-face)
(setq web-mode-enable-current-element-highlight t)
