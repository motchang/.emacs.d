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
 '(custom-safe-themes
   '("680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138" "467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c" "afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef" "7e068da4ba88162324d9773ec066d93c447c76e9f4ae711ddd0c5d3863489c52" "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2" "a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee" default))
 '(diff-switches "-u -w")
 '(doom-themes-enable-bold t)
 '(doom-themes-enable-italic t)
 '(dracula nil t)
 '(ediff-split-window-function 'split-window-horizontaly t)
 '(ediff-window-setup-function 'ediff-setup-windows-plain t)
 '(eldoc-mode t t)
 '(electric-indent-mode t)
 '(electric-layout-mode t)
 '(electric-pair-mode 0)
 '(enable-recursive-minibuffers t)
 '(exec-path-from-shell-check-startup-files nil t)
 '(exec-path-from-shell-copy-env "GOPATH" t)
 '(flycheck-check-syntax-automatically '(save mode-enabled))
 '(flycheck-mode t t)
 '(git-gutter-mode 1 t)
 '(git-link-open-in-browser t t)
 '(global-auto-highlight-symbol-mode t)
 '(global-auto-revert-mode t nil nil "Customized with leaf in `autorevert' block at `/Users/motchang/.emacs.d/init.el'")
 '(global-company-mode t)
 '(global-font-lock-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode nil)
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
 '(js-indent-level 2 t)
 '(js-switch-indent-offset 2)
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
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(company-box ivy-yasnippet minitest enh-ruby-mode doom-modeline all-the-icons doom-themes sql-indent magithub git-gutter-fringe fringe-helper slim-mode caml typescript-mode inf-ruby company swiper ivy epa-file twittering-mode find-file-in-repository dockerfile-mode bundler dap-mode tuareg apache-mode terraform-mode flycheck-golangci-lint go-mode csv-mode nginx-mode yaml-mode yaml-modde scss-mode sass-mode web-mode rinari js2-mode json-mode rainbow-mode yasnippet-snippets yasnippet migemo string-inflection git-link git-gutter magit rubocopfmt rspec-mode flycheck-pos-tip pos-tip ruby-end robe auto-highlight-symbol prettier-js tide rubocop company-lsp lsp-ui quickrun exec-path-from-shell rustic lsp-mode ace-window counsel posframe amx rainbow-delimiters use-package dracula-theme flycheck macrostep leaf-tree leaf-convert blackout el-get hydra leaf-keywords leaf))
 '(query-replace-highlight t)
 '(recentf-exclude '(".recentf"))
 '(recentf-max-saved-items 1000)
 '(recentf-mode t)
 '(ring-bell-function nil)
 '(rubocopfmt-include-unsafe-cops t t)
 '(ruby-block-highlight-toggle t)
 '(ruby-indent-lebel 2 t)
 '(ruby-indent-tabs-mode nil t)
 '(ruby-insert-encoding-magic-comment nil t)
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
 '(typescript-indent-level 2 t)
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
