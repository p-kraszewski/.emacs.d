(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(show-trailing-whitespace t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Andale Mono" :foundry "MONO" :slant normal :weight normal :height 158 :width normal))))
 '(company-tooltip ((t (:foreground "white"))))
  '(rainbow-delimiters-depth-1-face ((t (:foreground "#ffffff"))))
  '(rainbow-delimiters-depth-2-face ((t (:foreground "#ff88ff"))))
  '(rainbow-delimiters-depth-3-face ((t (:foreground "#88ff88"))))
  '(rainbow-delimiters-depth-4-face ((t (:foreground "#8888ff"))))
  '(rainbow-delimiters-depth-5-face ((t (:foreground "#ffff88"))))
  '(show-paren-match ((t (:inverse-video nil :underline "#73d216"))))
  '(show-paren-mismatch ((t (:underline "#ff1f18"))))
 )



(global-linum-mode 1)

(add-hook 'elixir-mode-hook 'alchemist-mode)
;(add-hook 'elixir-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(add-hook 'after-init-hook 'global-company-mode)
(setq alchemist-hooks-compile-on-save t)
;(add-hook 'after-init-hook 'global-rainbow-delimiters-mode)

(add-to-list 'auto-mode-alist
               '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
               '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
