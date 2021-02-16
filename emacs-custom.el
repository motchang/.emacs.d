(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-avoid-polling nil)
 '(auto-revert-interval 1)
 '(aw-keys '(106 107 108 105 111 104 121 117 112))
 '(before-save-hook '(delete-trailing-whitespace))
 '(c-basic-offset 2)
 '(c-hanging-comment-ender-p nil t)
 '(c-toggle-hungry-state t t)
 '(column-number-mode t)
 '(company-idle-delay 3)
 '(company-minimum-prefix-length 4)
 '(company-selection-wrap-around t)
 '(company-tooltip-idle-delay 3)
 '(confirm-kill-emacs 'yes-or-no-p)
 '(counsel-mode t)
 '(create-lockfiles nil nil nil "Customized with use-package lsp-mode")
 '(css-indent-offset 2 t)
 '(custom-safe-themes '(default))
 '(diff-switches "-u -w")
 '(dracula nil t)
 '(ediff-split-window-function 'split-window-horizontaly t)
 '(ediff-window-setup-function 'ediff-setup-windows-plain t)
 '(electric-indent-mode t)
 '(electric-layout-mode t)
 '(electric-pair-mode 0)
 '(enable-recursive-minibuffers t)
 '(exec-path-from-shell-copy-env "GOPATH" t)
 '(git-gutter-mode 1 t)
 '(git-link-open-in-browser t t)
 '(global-auto-highlight-symbol-mode t)
 '(global-auto-revert-mode t nil nil "Customized with leaf in `autorevert' block at `/Users/motchang/.emacs.d/init.el'")
 '(global-company-mode t)
 '(global-font-lock-mode t)
 '(global-hl-line-mode t)
 '(imenu-list-pisition 'left t)
 '(imenu-list-size 30 t)
 '(indent-tabs-mode nil)
 '(inf-ruby nil t)
 '(inf-ruby-default-implementation "pry")
 '(inf-ruby-eval-binding "Pry.toplevel_binding" t)
 '(ivy-count-format "(%d/%d)")
 '(ivy-ghq-command "~/bin/ghq")
 '(ivy-ghq-command-arg-root "~/bin/")
 '(ivy-height 40)
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(js-switch-indent-offset 2 t)
 '(js2-basic-offset 2 t)
 '(kill-ring-max 100)
 '(leaf nil t)
 '(line-number-mode t)
 '(load-theme nil t)
 '(lsp-inhibit-message t t nil "Customized with use-package lsp-mode")
 '(lsp-message-project-root-warning t t nil "Customized with use-package lsp-mode")
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(migemo-coding-system 'utf-8)
 '(migemo-command "cmigemo")
 '(migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
 '(migemo-options '("-q" "--emacs"))
 '(migemo-regex-dictionary nil)
 '(migemo-user-dictionary nil)
 '(package-archives
   '(("org" . "https://orgmode.org/elpa/")
     ("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")))
 '(package-selected-packages
   '(bundler dap-mode tuareg apache-mode terraform-mode flycheck-golangci-lint go-mode csv-mode nginx-mode yaml-mode yaml-modde scss-mode sass-mode web-mode rinari js2-mode json-mode rainbow-mode yasnippet-snippets yasnippet migemo string-inflection git-link git-gutter magit rubocopfmt rspec-mode flycheck-pos-tip pos-tip ruby-end robe auto-highlight-symbol prettier-js tide rubocop company-lsp lsp-ui quickrun exec-path-from-shell rustic lsp-mode ace-window counsel posframe amx rainbow-delimiters use-package dracula-theme flycheck macrostep leaf-tree leaf-convert blackout el-get hydra leaf-keywords leaf))
 '(query-replace-highlight t)
 '(recentf-exclude '(".recentf"))
 '(recentf-max-saved-items 1000)
 '(recentf-mode t)
 '(ring-bell-function nil)
 '(ruby-block-highlight-toggle t)
 '(ruby-indent-lebel 2 t)
 '(ruby-indent-tabs-mode nil)
 '(ruby-insert-encoding-magic-comment nil)
 '(ruby-mode-hook nil t)
 '(sass-indent-offset 2 t)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 1)
 '(scss-compile-at-save nil t)
 '(search-highlight t)
 '(show-paren-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(truncate-lines 0)
 '(visible-bell t)
 '(web-mode-asp-offset 2 t)
 '(web-mode-css-offset 2 t)
 '(web-mode-enable-auto-closing t t)
 '(web-mode-enable-auto-indentation t t)
 '(web-mode-enable-auto-pairing t t)
 '(web-mode-enable-auto-quoting t t)
 '(web-mode-html-offset 2 t)
 '(web-mode-java-offset 2 t)
 '(web-mode-markup-indent-offset 2 t)
 '(web-mode-php-offset 2 t)
 '(web-mode-script-offset 2 t)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:height 4.0 :foreground "#f1fa8c"))) nil "Customized with leaf in `ace-window' block at `/Users/motchang/.emacs.d/init.el'"))
