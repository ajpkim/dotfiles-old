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

(unless (package-installed-p `rebecca-theme)
  (package-refresh-contents)
  (package-install `rebecca-theme)) 

(load-theme 'rebecca t)

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
 '(custom-safe-themes
   '("d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "e208e45345b91e391fa66ce028e2b30a6aa82a37da8aa988c3f3c011a15baa22" "d600c677f1777c1e4bfb066529b5b73c0179d0499dd4ffa3f599a0fb0cfbd501" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(fci-rule-color "#383838")
 '(org-agenda-files
   '("~/org/job-hunt.org" "~/org/journal.org" "~/org/now.org" "~/.emacs.d/config.org" "~/org/tasks.org" "~/org/orgbox.org" "/home/ajpkim/org/journal/2021-03-05.org"))
 '(package-selected-packages
   '(org-journal org-roam toc-org htmlize org-drill drag-stuff ace-window rainbow-mode avy org-bullets beacon dracula-theme which-key use-package))
 '(pos-tip-background-color "#414E63")
 '(pos-tip-foreground-color "#BEC8DB")
 '(xterm-color-names
   ["#414E63" "#CC71D1" "#88D6CB" "#C79474" "#76A2D1" "#4A4B6B" "#96A9D6" "#8E95A3"])
 '(xterm-color-names-bright
   ["#555B77" "#E074DB" "#8BE8D8" "#B2DEC1" "#75B5EB" "#9198EB" "#C3C3E8" "#838791"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))
