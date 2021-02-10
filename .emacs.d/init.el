(require `package)
(setq package-enable-at-startup nil)
(add-to-list `package-archives
	     `("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p `use-package)
  (package-refresh-contents)
  (package-install `use-package))

(unless (package-installed-p `dracula-theme)
  (package-refresh-contents)
  (package-install `dracula-theme)) 

;;; --------------------------
;;; Everything above must stay in init file and not config.org file
;;; --------------------------


;; SETTING UP ORG CONFIG
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))


;;; --------------------------
;;; Everything below must stay in init file and not config.org file
;;; --------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(global-display-line-numbers-mode t)
 '(org-agenda-files
   '("~/org/drill/DSA.org" "~/org/drill/RL.org" "~/org/drill/drill-notes.org" "~/org/journal.org" "~/org/now.org" "~/.emacs.d/config.org" "~/org/tasks.org" "~/org/orgbox.org"))
 '(package-selected-packages
   '(org-drill drag-stuff ace-window rainbow-mode avy org-bullets beacon dracula-theme which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))
