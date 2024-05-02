;; Don't show the splash screen
(setq inhibit-startup-message t)

;; Turn off some unneeded UI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Don't show the splash screen
(setq inhibit-startup-message t)

;; Turn off some unneeded UI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Font
(set-frame-font "Iosevka Nerd Font" )

;; Move between windows with `SHIFT + arrow`
(windmove-default-keybindings)

;; Color theme
(package-install 'gruber-darker-theme)
(package-install 'catppuccin-theme)

;; (load-theme 'gruber-darker t)
(setq catppuccin-flavor 'frappe) 
(load-theme 'catppuccin :no-confirm)

;; Recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Company Mode (AutoCompletion)
(add-hook 'after-init-hook 'global-company-mode)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") )

;; Evil
(unless (package-installed-p 'evil)
  (package-install 'evil)
  (package-install 'lsp-mode))

(require 'evil)
(evil-mode 1)

;; Lsp
(require 'lsp-mode)
(lsp-mode 1)

;; Rust
(require 'rust-mode)
(rust-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
