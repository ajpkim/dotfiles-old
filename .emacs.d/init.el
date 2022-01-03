(require `package)
(setq package-enable-at-startup nil)
(add-to-list `package-archives
	     `("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p `use-package)
  (package-refresh-contents)
  (package-install `use-package))

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
   [default bold shadow italic underline success warning error])
 '(ansi-color-names-vector
   ["gray35" "#ff8059" "#44bc44" "#d0bc00" "#2fafff" "#feacd0" "#00d3d0" "gray65"])
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#282e46")
 '(custom-safe-themes
   '("6dc02f2784b4a49dd5a0e0fd9910ffd28bb03cfebb127a64f9c575d8e3651440" "e1ad4299390cb3fc0cbf5a705442eaf08510aa947c90c8bc83b1d7308befb475" "0568a5426239e65aab5e7c48fa1abde81130a87ddf7f942613bf5e13bf79686b" "abe5ee8858cd1fbe36304a8c3b2315d3e0a4ef7c8588fcc45d1c23eafb725bb6" "bde7af9e749d26cbcbc3e3ac2ac9b13d52aa69b6148a8d6e5117f112f2797b42" "465f04ecb7486d45ed9e186588e16b0b2e7a8fc04d7d355d0ba9c0c4ea3fb6de" "30b14930bec4ada72f48417158155bc38dd35451e0f75b900febd355cda75c3e" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "aa85228e4b6d188c3c0b8553548142c2c75726429614376c26255a51378982f5" "81c3de64d684e23455236abde277cda4b66509ef2c28f66e059aa925b8b12534" "d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "e208e45345b91e391fa66ce028e2b30a6aa82a37da8aa988c3f3c011a15baa22" "d600c677f1777c1e4bfb066529b5b73c0179d0499dd4ffa3f599a0fb0cfbd501" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(display-time-mode t)
 '(exwm-floating-border-color "#646464")
 '(fci-rule-color "#383838")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-themes-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-themes-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-themes-fringe-yellow))
 '(fringe-mode 10 nil (fringe))
 '(global-hl-line-mode nil)
 '(highlight-tail-colors '(("#2f4a00" . 0) ("#00415e" . 20)))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#c0c530")
     ("TODO" . "#feacd0")
     ("NEXT" . "#b6a0ff")
     ("THEM" . "#f78fe7")
     ("PROG" . "#00d3d0")
     ("OKAY" . "#4ae2f0")
     ("DONT" . "#70b900")
     ("FAIL" . "#ff8059")
     ("BUG" . "#ff8059")
     ("DONE" . "#44bc44")
     ("NOTE" . "#d3b55f")
     ("KLUDGE" . "#d0bc00")
     ("HACK" . "#d0bc00")
     ("TEMP" . "#ffcccc")
     ("FIXME" . "#ff9077")
     ("XXX+" . "#ef8b50")
     ("REVIEW" . "#6ae4b9")
     ("DEPRECATED" . "#bfd9ff")))
 '(ibuffer-deletion-face 'modus-themes-mark-del)
 '(ibuffer-filter-group-name-face 'modus-themes-pseudo-header)
 '(ibuffer-marked-face 'modus-themes-mark-sel)
 '(ibuffer-title-face 'default)
 '(line-number-mode nil)
 '(linum-format " %6d ")
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(my-modus-themes-tinted t)
 '(my/modus-themes-tinted t)
 '(org-agenda-custom-commands
   '(("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("v" "Active tasks" alltodo "ACTIVE" nil)))
 '(org-agenda-files
   '("~/org/links.org" "~/org/cabcs.org" "/home/cabcs/org/journal/2021-12-23.org"))
 '(org-src-block-faces 'nil)
 '(package-selected-packages
   '(erc-image erc-hl-nicks rainbow-delimiters ob-go go-mode simple-httpd ox-hugo lsp-ivy csharp-mode lsp-mode org-mime pass pinentry org-pomodoro magit elfeed ein company-quickhelp company-anaconda anaconda-mode company geiser-mit geiser pastelmac-theme clues-theme afternoon-theme sicp anki-editor multiple-cursors counsel ivy smartparens olivetti modus-themes org-journal org-roam toc-org htmlize org-drill drag-stuff ace-window rainbow-mode avy org-bullets beacon dracula-theme which-key use-package))
 '(pdf-view-midnight-colors '("#ffffff" . "#161129"))
 '(pos-tip-background-color "#414E63")
 '(pos-tip-foreground-color "#BEC8DB")
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(smtpmail-smtp-server "127.0.0.1")
 '(smtpmail-smtp-service 1025)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ff8059")
     (40 . "#feacd0")
     (60 . "#f78fe7")
     (80 . "#ef8b50")
     (100 . "#d0bc00")
     (120 . "#c0c530")
     (140 . "#f8dec0")
     (160 . "#bfebe0")
     (180 . "#44bc44")
     (200 . "#70b900")
     (220 . "#6ae4b9")
     (240 . "#4ae2f0")
     (260 . "#00d3d0")
     (280 . "#c6eaff")
     (300 . "#2fafff")
     (320 . "#79a8ff")
     (340 . "#00bcff")
     (360 . "#b6a0ff")))
 '(vc-annotate-very-old-color nil)
 '(xterm-color-names
   ["black" "#ff8059" "#44bc44" "#d0bc00" "#2fafff" "#feacd0" "#00d3d0" "gray65"])
 '(xterm-color-names-bright
   ["gray35" "#ef8b50" "#70b900" "#c0c530" "#79a8ff" "#f78fe7" "#4ae2f0" "white"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch ((t (:family "Ubuntu")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
