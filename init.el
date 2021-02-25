(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

;; <leaf-install-code>
(eval-and-compile
  (customize-set-variable
   'package-archives '(("org" . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu" . "https://elpa.gnu.org/packages/")
		       ("marmalade" . "http://marmalade-repo.org/packages/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))
;; </leaf-install-code>

(leaf leaf
  :config
  (leaf leaf-convert
    :ensure t
    :config (leaf use-package :ensure t))
  (leaf leaf-tree
    :ensure t
    :custom
    (imenu-list-size . 30)
    (imenu-list-pisition . 'left)))

(leaf macrostep
  :ensure t
  :bind (("C-c e" . macrostep-expand)))


(leaf-keys (("C-x C-o" . other-window)))

(leaf ediff
  :custom
  (ediff-split-window-function . 'split-window-horizontaly)
  (ediff-window-setup-function . 'ediff-setup-windows-plain))

(leaf exec-path-from-shell
  :emacs>= 24.1
  :ensure t
  :config (exec-path-from-shell-initialize))

;; (message exec-path)
;; M-x leaf-convert-insert-template RET flycheck
;; (leaf flycheck
;;   :doc "On-the-fly syntax checking"
;;   :req "dash-2.12.1" "pkg-info-0.4" "let-alist-1.0.4" "seq-1.11" "emacs-24.3"
;;   :tag "tools" "languages" "convenience" "emacs>=24.3"
;;   :added "2021-02-16"
;;   :url "http://www.flycheck.org"
;;   :emacs>= 24.3
;;   :ensure t)

(leaf dracula-theme
  :when (version<= "24.3" emacs-version)
  :config
  (load-theme 'dracula t))

(leaf rainbow-delimiters
  :ensure t
  :hook (prog-mode-hook))

(leaf rainbow-mode
  :ensure t
  :hook
  css-mode-hook
  emacs-lisp-mode-hook
  hamlet-mode-hook
  sass-mode-hook
  scss-mode-hook
  web-mode-hook)

(leaf amx
  :emacs>= 24.4
  :ensure t)

(leaf posframe
  :emacs>= 26
  :ensure t)

(leaf ivy
  :emacs>= 24.5
  :ensure t
  :custom
  (ivy-use-virtual-buffers . t)
  (enable-recursive-minibuffers . t)
  (ivy-height . 40)
  (ivy-count-format . "(%d/%d)")
  (ivy-mode . t)
  (counsel-mode . t))

(leaf swiper
  :emacs>= 24.5
  :ensure t
  :after ivy)

(leaf counsel
  :emacs>= 24.5
  :after swiper
  :ensure t
  :bind (("M-x" . counsel-M-x)
	 ("M-y" . counsel-yank-pop)
	 ("C-x b" . counsel-buffer-or-recentf)
	 ("C-x C-b" . counsel-switch-buffer)))

(leaf ivy-ghq
  :added "2021-02-16"
  :el-get analyticd/ivy-ghq
  :require t
  :bind (("C-]" . ivy-ghq-open))
  :custom
  (ivy-ghq-command . "~/bin/ghq"))

(leaf ace-window
  :ensure t
  :after avy
  :bind (("C-M-o" . ace-window))
  :custom-face (aw-leading-char-face . '((t (:height 4.0 :foreground "#f1fa8c"))))
  :custom
  (aw-keys . '(?j ?k ?l ?i ?o ?h ?y ?u ?p)))

(leaf auto-highlight-symbol
  :ensure t
  :custom
  (global-auto-highlight-symbol-mode . t))

(leaf flycheck
  :emacs>= 24.3
  :ensure t)

(leaf pos-tip
  :ensure t)

(leaf flycheck-pos-tip
  :emacs>= 24.1
  :ensure t
  :after flycheck pos-tip
  :custom
  (flycheck-display-errors-function . #'flycheck-pos-tip-error-messages))

(leaf magit
  :emacs>= 25.1
  :ensure t
  :after git-commit with-editor
  :hook (magit-mode-hook
	 . (lambda ()
	     (add-to-list 'process-coding-system-alist '("git" utf-8 . utf-8))
	     (set-default-coding-systems 'utf-8)
	     (prefer-coding-system 'utf-8))))

(leaf git-gutter
  :emacs>= 24.3
  :ensure t
  :custom
  (git-gutter-mode . 1))

(leaf git-link
  :emacs>= 24.3
  :ensure t
  :custom
  (git-link-open-in-browser . t))

(leaf company
  :emacs>= 24.3
  :ensure t
  :bind (("M-i" . company-complete)
         (:company-active-map
          ;; C-n, C-pで補完候補を選べるように
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
          ;; C-hがデフォルトでドキュメント表示にmapされているので、文字を消せるようにmapを外す
          ("C-h" . nil)
          ;; 1つしか候補がなかったらtabで補完、複数候補があればtabで次の候補へ行くように
          ("<tab>" . company-complete-common-or-cycle)
          ;; ドキュメント表示
          ("M-d" . company-show-doc-buffer)))
  :custom
  (global-company-mode . t)
  ;; n文字入力で補完されるよにう
  (company-minimum-prefix-length . 4)
  ;; デフォルトは0.5
  (company-idle-delay . 3)
  (company-tooltip-idle-delay . 3)
  ;; 候補の一番上でselect-previousしたら一番下に、一番下でselect-nextしたら一番上に行くように
  (company-selection-wrap-around . t))

(leaf string-inflection
  :ensure t
  :bind (("C-c i" . string-inflection-cycle)
	 ("C-c C" . string-inflection-camelcase)
	 ("C-c L" . string-inflection-lower-camelcase)
	 ("C-c J" . string-inflection-java-style-cycle)))

(leaf migemo
  :ensure t
  :require t
  :custom
  (migemo-dictionary . "/usr/local/share/migemo/utf-8/migemo-dict")
  (migemo-command . "cmigemo")
  (migemo-options . '("-q" "--emacs"))
  (migemo-user-dictionary . nil)
  (migemo-coding-system . 'utf-8)
  (migemo-regex-dictionary . nil)
  :config
  (migemo-init))

(leaf yasnippet
  :ensure t
  :require t
  :bind (:yas-minor-mode-map
         ("C-c y" . company-yasnippet))
  :config
  (yas-global-mode)
  (leaf yasnippet-snippets :ensure t))


;; -----------------------------------------------------------------------------
;; LSP, etc
(leaf lsp-mode
  :emacs>= 26.1
  :ensure t
  :after spinner markdown-mode lv
  :hook (prog-major-mode lsp-prog-major-mode-enable)
  :custom
  (lsp-inhibit-message . t)
  (lsp-message-project-root-warning . t)
  (create-lockfiles . nil))

(leaf lsp-ui
  :emacs>= 26.1
  :ensure t
  :after lsp-mode markdown-mode)

(leaf company-lsp
  :emacs>= 25.1
  :ensure t
  :after lsp-mode company)

(leaf dap-mode
  :emacs>= 26.1
  :ensure t
  :after lsp-mode bui lsp-treemacs posframe
  :custom ((dap-tooltip-mode . 1)
           (dap-mode . 1))
  :config
  (leaf dap-ui
    :ensure nil
    :require t
    :config
    (dap-ui-mode 1)))

;; Display debug windows on session startup
;; https://emacs-lsp.github.io/dap-mode/page/how-to/
(defun my/window-visible (b-name)
  "Return whether B-NAME is visible."
  (-> (-compose 'buffer-name 'window-buffer)
      (-map (window-list))
      (-contains? b-name)))

(defun my/show-debug-windows (session)
  "Show debug windows."
  (let ((lsp--cur-workspace (dap--debug-session-workspace session)))
    (save-excursion
      ;; display locals
      (unless (my/window-visible dap-ui--locals-buffer)
        (dap-ui-locals))
      ;; display sessions
      (unless (my/window-visible dap-ui--sessions-buffer)
        (dap-ui-sessions)))))

(add-hook 'dap-stopped-hook 'my/show-debug-windows)

(defun my/hide-debug-windows (session)
  "Hide debug windows when all debug sessions are dead."
  (unless (-filter 'dap--session-running (dap--get-sessions))
    (and (get-buffer dap-ui--sessions-buffer)
         (kill-buffer dap-ui--sessions-buffer))
    (and (get-buffer dap-ui--locals-buffer)
         (kill-buffer dap-ui--locals-buffer))))

(add-hook 'dap-terminated-hook 'my/hide-debug-windows)

;; -----------------------------------------------------------------------------
;; Web, etc
(leaf web-mode
  :emacs>= 23.1
  :ensure t
  :custom ((web-mode-html-offset             . 2)
           (web-mode-markup-indent-offset    . 2)
           (web-mode-css-offset              . 2)
           (web-mode-script-offset           . 2)
           (web-mode-php-offset              . 2)
           (web-mode-java-offset             . 2)
           (web-mode-asp-offset              . 2)
           (indent-tabs-mode                 . nil)
           (tab-width                        . 2)
           (web-mode-enable-auto-pairing     . t)
           (web-mode-enable-auto-closing     . t)
           (web-mode-enable-auto-quoting     . t)
           (web-mode-enable-auto-indentation . t)))
(leaf scss-mode
  :ensure t
  :custom ((tab-width . 2)
           (indent-tabs-mode . nil)
           (css-indent-offset . 2)
           (scss-compile-at-save . nil)))

(leaf sass-mode
  :ensure t
  :after haml-mode
  :custom ((tab-width . 2)
           (indent-tabs-mode . nil)
           (sass-indent-offset . 2)))


(leaf csv-mode
  :ensure t)

(leaf markdown-mode
  :ensure t)

(leaf terraform-mode
  :ensure t)

(leaf yaml-mode
  :ensure t)

(leaf nginx-mode
  :ensure t)

(leaf apache-mode
  :ensure t)

;; -----------------------------------------------------------------------------
;; Ruby
(leaf ruby-mode
  :custom ((c-toggle-hungry-state . t)
           (ruby-insert-encoding-magic-comment . nil)
           (electric-indent-mode . t)
           (electric-layout-mode . t)
           (electric-pair-mode . 0)
           (truncate-lines . 0)
           (ruby-indent-lebel . 2)
           (ruby-indent-tabs-mode . nil))
  :config
  (leaf inf-ruby
    :ensure t
    :custom ((inf-ruby-default-implementation . "pry")
             (inf-ruby-eval-binding . "Pry.toplevel_binding"))
    :hook ((ruby-mode-hook . inf-ruby-minor-mode)
           (inf-ruby-mode-hook . ansi-color-for-comint-mode-on))))

(leaf ruby-block
  :el-get juszczakn/ruby-block
  :require t
  :custom (ruby-block-highlight-toggle . t)
  :hook (ruby-mode-hook . ruby-block-mode)
        (rspec-mode-hook . ruby-block-mode))

(leaf ruby-end
  :ensure t
  :hook (ruby-mode . 'ruby-end-mode))

(leaf bundler
  :ensure t
  :after inf-ruby)

(leaf rubocop
  :emacs>= 24
  :ensure t
  :hook (ruby-mode-hook
	 . (lambda ()
	     (flycheck-mode)
	     (flycheck-select-checker 'ruby-rubocop)
             (flycheck-disable-checker 'ruby-rubylint)
             (flycheck-disable-checker 'ruby-reek))))

(leaf rubocopfmt
  :ensure t)

(leaf rspec-mode
  :ensure t
  :after ruby-mode
  :hook (rspec-mode-hook
	 . (lambda ()
	     (flycheck-mode))))

(leaf rinari
  :ensure t
  :after ruby-mode inf-ruby ruby-compilation jump
  :hook (ruby-mode-hook . rinari-minor-mode))

(leaf robe
  :emacs>= 24.4
  :ensure t
  :after inf-ruby
  :bind ("M-j" . robe-jump)
  :hook ((ruby-mode-hook . robe-mode)
	 (company-mode-hook
	  . (lambda ()
	      (push 'company-robe company-backends)))))

;; -----------------------------------------------------------------------------
;; Javascript / TypeScript
(leaf js2-mode
  :emacs>= 24.1
  :ensure t
  :custom ((indent-tabs-mode . nil)
	         (tab-width . 2)
	         (c-basic-offset . 2)
	         (c-basic-offset . 2)
	         (js2-basic-offset . 2)
	         (c-hanging-comment-ender-p . nil)
	         (js-switch-indent-offset . 2))
  :hook ((js2-mode-hook
          . (lambda ()
              (c-toggle-hungry-state t)
              (c-set-offset 'case-lable' 2)
              (c-set-offset 'arglist-intro' 2)
              (c-set-offset 'arglist-close' 0)
              (flycheck-mode)))))

(leaf typescript-mode
  :emacs>= 24.3
  :ensure t
  :custom ((indent-tabs-mode . nil)
	         (tab-width . 2)
	         (typescript-indent-level . 2)
	         (flycheck-mode . t)
           (flycheck-check-syntax-automatically . '(save mode-enabled))
	         (eldoc-mode . t))
  :mode ("\\.ts[x]$"))

(leaf tide
  :emacs>= 25.1
  :ensure t
  :after flycheck typescript-mode
  :hook ((typescript-mode-hook
	  . (lambda ()
	      (tide-setup)
	      (company-mode-on)))))

(leaf prettier-js
  :ensure t
  :hook ((js2-mode-hook . prettier-js-mode)
         (typescript-mode-hook . prettier-js-mode)))

(leaf json-mode
  :ensure t
  :after json-reformat json-snatcher)

;; -----------------------------------------------------------------------------
;; Rust
(leaf rustic
  :emacs>= 26.1
  :ensure t
  :mode ("\\.rs$")
  :after flycheck xterm-color markdown-mode spinner
  :custom
  (auto-highlight-symbol-mode . t)
  (smartparens-mode . t)
  (rustic-lsp-server . 'rust-analyzer)
  (lsp-rust-analyzer-server-command . '("~/.cargo/bin/rust-analyzer"))
  (rustic-format-trigger . 'on-save)
  (remove-hook 'rustic-mode-hook 'flycheck-mode)
  (push 'rustic-clippy flycheck-checkers))

(leaf quickrun
  :emacs>= 24.3
  :ensure t)


;; -----------------------------------------------------------------------------
;; Go
(leaf go-mode
  :ensure t
  :custom ((exec-path-from-shell-copy-env . "GOPATH")
           (tab-width . 2)
           (indent-tabs-mode . nil)))

(leaf flycheck-golangci-lint
  :emacs>= 24
  :ensure t
  :after flycheck)

;; -----------------------------------------------------------------------------
;; Ruby
(leaf caml
  :ensure t)

(leaf tuareg
  :emacs>= 24.4
  :ensure t
  :after caml)

(provide 'init)