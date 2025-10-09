(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8363207a952efb78e917230f5a4d3326b2916c63237c1f61d7e5fe07def8d378"
     "3d21eda97ce916fda054b0d2e1381e3fb3118cee79749e4b282b55fc461fb13e"
     "bf4d25079f7d052cb656e099d9c2af9fb61ee377e8e72b7f13cecf8dffb74f92"
     "d5fd482fcb0fe42e849caba275a01d4925e422963d1cd165565b31d3f4189c87"
     "a372fd35724ebb25694e8f977fde62af3e9dd5e31d71005968545042419fa47d"
     "0b41a4a9f81967daacd737f83d3eac7e3112d642e3f786cf7613de4da97a830a"
     "aa545934ce1b6fd16b4db2cf6c2ccf126249a66712786dd70f880806a187ac0b"
     "51fa6edfd6c8a4defc2681e4c438caf24908854c12ea12a1fbfd4d055a9647a3"
     "18a1d83b4e16993189749494d75e6adb0e15452c80c431aca4a867bcc8890ca9"
     "75b371fce3c9e6b1482ba10c883e2fb813f2cc1c88be0b8a1099773eb78a7176"
     "5e39e95c703e17a743fb05a132d727aa1d69d9d2c9cde9353f5350e545c793d4"
     "77f281064ea1c8b14938866e21c4e51e4168e05db98863bd7430f1352cab294a"
     "6bf350570e023cd6e5b4337a6571c0325cec3f575963ac7de6832803df4d210a"
     "a9028cd93db14a5d6cdadba789563cb90a97899c4da7df6f51d58bb390e54031"
     "e5b6491e99e98d0586766aaf9eb32b1dad3bc3c0c7a1921849d65d3f6d8621a6"
     default))
 '(dired-kill-when-opening-new-dired-buffer t)
 '(dired-listing-switches "-alF --group-directories-first")
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(evil-motion-state-modes
   '(apropos-mode color-theme-mode command-history-mode
                  undo-tree-visualizer-mode))
 '(evil-undo-system 'undo-redo)
 '(helm-M-x-show-short-doc t)
 '(helm-autoresize-max-height 30)
 '(helm-autoresize-min-height 20)
 '(helm-autoresize-mode t)
 '(helm-buffer-max-length nil)
 '(helm-buffers-fuzzy-matching t)
 '(helm-completion-style 'emacs)
 '(helm-follow-input-idle-delay 0.0)
 '(helm-follow-mode-persistent t)
 '(helm-mini-default-sources
   '(helm-source-buffers-list helm-source-buffer-not-found
                              helm-source-recentf))
 '(helm-minibuffer-history-key "M-p")
 '(helm-source-names-using-follow '("Buffers" "switch-to-buffer"))
 '(helm-type-buffer-actions
   '(("Switch to buffer(s)" . helm-buffer-switch-buffers)
     ("Switch to buffer(s) other window `C-c o'"
      . helm-buffer-switch-buffers-other-window)
     ("Raise buffer frame maybe"
      . helm-buffers-maybe-raise-buffer-frame)
     ("Switch to buffer(s) other tab `C-c C-t'"
      . helm-buffers-switch-to-buffer-other-tab)
     ("Switch to buffer at line number"
      . helm-switch-to-buffer-at-linum)
     ("Browse project `C-x C-d'" . helm-buffers-browse-project)
     ("Switch to shell" . helm-buffer-switch-to-shell)
     ("Query replace regexp `C-M-%'"
      . helm-buffer-query-replace-regexp)
     ("Query replace `M-%'" . helm-buffer-query-replace)
     ("View buffer" . view-buffer) ("Display buffer" . display-buffer)
     ("Rename buffer `M-R'" . helm-buffers-rename-buffer)
     ("Grep buffer(s) `M-g s' (C-u grep all buffers)"
      . helm-zgrep-buffers)
     ("Multi occur buffer(s) `C-s (C-u search also in current)'"
      . helm-multi-occur-as-action)
     ("Revert buffer(s) `M-G'" . helm-revert-marked-buffers)
     ("Insert buffer" . insert-buffer)
     ("Kill buffer(s) `M-D'" . helm-kill-marked-buffers)
     ("Diff with file `C-='" . diff-buffer-with-file)
     ("Ediff Marked buffers `C-c ='" . helm-ediff-marked-buffers)
     ("Ediff Merge marked buffers `M-='"
      . #[257 "\300\1\301\"\207" [helm-ediff-marked-buffers t] 4
              "\12\12(fn CANDIDATE)"])))
 '(org-default-notes-file "~/projects/todo.org")
 '(org-edit-src-auto-save-idle-delay 10)
 '(org-edit-src-turn-on-auto-save t)
 '(org-src-ask-before-returning-to-edit-buffer nil)
 '(org-startup-folded t)
 '(package-selected-packages
   '(ace-window all-the-icons-completion all-the-icons-dired amx auctex
                backward-forward benchmark-init company counsel
                delight dired-single dired-subtree disable-mouse
                embark-consult evil-better-visual-line evil-collection
                evil-nerd-commenter evil-surround expand-region
                general helm highlight-indent-guides magit marginalia
                markdown-mode modus-themes mood-line orderless
                org-auto-tangle org-ref ox-twbs projectile rasi-mode
                smartparens vertico yasnippet-snippets))
 '(python-indent-guess-indent-offset-verbose nil)
 '(search-whitespace-regexp "[ \11\12]+")
 '(use-short-answers t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default: background)
 '(fixed-pitch ((t (:family "FantasqueSansM Nerd Font"))))
 '(helm-M-x-short-doc ((t (:foreground "dark violet" :box nil))))
 '(helm-ff-directory ((t (:extend t :background "LightGray" :foreground "red"))))
 '(helm-match ((t (:extend t :foreground "magenta"))))
 '(helm-selection ((t (:inherit hl-line :extend t))))
 '(helm-source-header ((t (:inherit minibuffer-prompt :extend t))))
 '(modus-themes-fixed-pitch ((t (:inherit fixed-pitch))) t)
 '(org-block ((t (:inherit (modus-themes-fixed-pitch fixed-pitch) :extend t :background "#1d2235"))))
 '(org-default ((t (:inherit default))))
 '(org-document-title ((t (:inherit default :weight bold :height 1.5 :underline nil))))
 '(org-ellipsis ((t (:underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :height 1.75 :foreground "DarkOrchid1"))))
 '(org-level-2 ((t (:inherit default :weight bold :height 1.5 :foreground "DarkOrange"))))
 '(org-level-3 ((t (:inherit default :weight bold :height 1.25 :foreground "SeaGreen2"))))
 '(org-level-4 ((t (:inherit default :weight bold :height 1.1 :foreground "goldenrod"))))
 '(org-level-5 ((t (:inherit default :weight bold))))
 '(org-level-6 ((t (:inherit default :weight bold))))
 '(org-level-7 ((t (:inherit default :weight bold))))
 '(org-level-8 ((t (:inherit default :weight bold))))
 '(org-meta-line ((t (:inherit (fixed-pitch modus-themes-fixed-pitch) :foreground "#989898"))))
 '(variable-pitch ((t (:family "sans")))))
