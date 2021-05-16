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

;; (load-theme 'rebecca t)
;; (load-theme 'cyberpunk t)
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
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("aa85228e4b6d188c3c0b8553548142c2c75726429614376c26255a51378982f5" "81c3de64d684e23455236abde277cda4b66509ef2c28f66e059aa925b8b12534" "d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "e208e45345b91e391fa66ce028e2b30a6aa82a37da8aa988c3f3c011a15baa22" "d600c677f1777c1e4bfb066529b5b73c0179d0499dd4ffa3f599a0fb0cfbd501" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(exwm-floating-border-color "#646464")
 '(fci-rule-color "#383838")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-theme-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-theme-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-theme-fringe-yellow))
 '(global-hl-line-mode nil)
 '(highlight-tail-colors '(("#2f4a00" . 0) ("#00415e" . 20)))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#cfdf30")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae8fc")
     ("DONT" . "#70c900")
     ("FAIL" . "#ff8059")
     ("BUG" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#f0ce43")
     ("KLUDGE" . "#eecc00")
     ("HACK" . "#eecc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9977")
     ("XXX+" . "#f4923b")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#bfd9ff")))
 '(ibuffer-deletion-face 'modus-theme-mark-del)
 '(ibuffer-filter-group-name-face 'modus-theme-mark-symbol)
 '(ibuffer-marked-face 'modus-theme-mark-sel)
 '(ibuffer-title-face 'modus-theme-pseudo-header)
 '(org-agenda-custom-commands
   '(("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("v" "Active tasks" alltodo "ACTIVE" nil)))
 '(org-agenda-files
   '("~/org/library.org" "~/org/anki-exports.org" "~/org/self.org" "~/org/anki.org" "~/org/development.org" "~/org/inbox.org" "~/org/work.org" "~/org/learn.org" "~/org/habits.org" "~/.emacs.d/config.org" "/home/ajpkim/org/journal/2021-05-15.org"))
 '(org-src-block-faces 'nil)
 '(package-selected-packages
   '(anki-editor multiple-cursors counsel ivy smartparens olivetti modus-themes org-journal org-roam toc-org htmlize org-drill drag-stuff ace-window rainbow-mode avy org-bullets beacon dracula-theme which-key use-package))
 '(pdf-view-midnight-colors '("#ffffff" . "#110b11"))
 '(pos-tip-background-color "#414E63")
 '(pos-tip-foreground-color "#BEC8DB")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ff8059")
     (40 . "#feacd0")
     (60 . "#f78fe7")
     (80 . "#f4923b")
     (100 . "#eecc00")
     (120 . "#cfdf30")
     (140 . "#f8dec0")
     (160 . "#bfebe0")
     (180 . "#44bc44")
     (200 . "#70c900")
     (220 . "#6ae4b9")
     (240 . "#4ae8fc")
     (260 . "#00d3d0")
     (280 . "#c6eaff")
     (300 . "#2fafff")
     (320 . "#79a8ff")
     (340 . "#00bcff")
     (360 . "#b6a0ff")))
 '(vc-annotate-very-old-color nil)
 '(xterm-color-names
   ["#414E63" "#CC71D1" "#88D6CB" "#C79474" "#76A2D1" "#4A4B6B" "#96A9D6" "#8E95A3"])
 '(xterm-color-names-bright
   ["#555B77" "#E074DB" "#8BE8D8" "#B2DEC1" "#75B5EB" "#9198EB" "#C3C3E8" "#838791"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(variable-pitch ((t (:family "Ubuntu")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
