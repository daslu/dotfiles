;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `!distribution'. For now available distributions are `spacemacs-core'
   ;; or `spacemacs'. (default 'spacemacs-core)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     python
     ;; csv
     php
     sql
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     clojure
     fsharp
     git
     markdown
     org
     html
     javascript
     extra-langs
     ess
     git
     smex
     ;; w3m
     mu4e
     ;;exwm
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     jabber)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(dsvn
                                      pdf-tools)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t
   ;; https://www.reddit.com/r/emacs/comments/3qe2n3/how_to_move_spacemacs_hint_panel_to_vertica
   dotspacemacs-which-key-position 'right-then-bottom))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(default
                          anti-zenburn-theme
                          spacemacs-light
                          spacemacs-dark
                          solarized-light
                          solarized-dark
                          leuven
                          monokai
                          zenburn)
   ;; if non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("source code pro"
                               :size 24
                               :weight normal
                               :width normal
                               ;; :powerline-scale 1.1
                               )
   ;; the leader key
   dotspacemacs-leader-key "SPC"
   ;; the leader key accessible in `emacs state' and `insert state'
   ;; (default "m-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; the command key used for evil commands (ex-commands) and
   ;; emacs commands (m-x).
   ;; by default the command key is `:' so ex-commands are executed like in vim
   ;; with `:' and emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; location where to auto-save files. possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; if non nil then `ido' replaces `helm' for some commands. for now only
   ;; `find-files' (spc f f), `find-spacemacs-file' (spc f e s), and
   ;; `find-contrib-file' (spc f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; if non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; if non nil the paste micro-state is enabled. when enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; which-key delay in seconds. the which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.2
   ;; which-key frame position. possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; if non nil a progress bar is displayed when spacemacs is loading. this
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; if non nil the frame is fullscreen when emacs starts up. (default nil)
   ;; (emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; if non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; use to disable fullscreen animations in osx. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; if non nil the frame is maximized when emacs starts up.
   ;; takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; a value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; a value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; if non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; if non nil smooth scrolling (native-scrolling) is enabled. smooth
   ;; scrolling overrides the default behavior of emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; if non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t
   ;; select a scope to highlight delimiters. possible values are `any',
   ;; `current', `all' or `nil'. default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; if non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; list of search tool executable names. spacemacs uses the first installed
   ;; tool of the list. supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; the default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "initialization function for user code.
it is called immediately after `dotspacemacs/init'.  you are free to put any
user code."


  )

(defun dotspacemacs/user-config ()
  "configuration function for user code.
 this function is called at the very end of spacemacs initialization after
layers configuration. you are free to put any user code."

  (spacemacs/toggle-hybrid-mode-on)


  ;; (set-fontset-font "fontset-default" '(#x5d0 . #x5ff) "miriam mono clm:bold")


  (defun connect-11111 ()
    (interactive)
    (cider-connect "localhost" 11111))

  (defun connect-9999 ()
    (interactive)
    (cider-connect "localhost" 9999))

  (defun connect-19999 ()
    (interactive)
    (cider-connect "localhost" 19999))

  (defun connect-11112 ()
    (interactive)
    (cider-connect "localhost" 11112))

  (defun connect-44444 ()
    (interactive)
    (cider-connect "localhost" 44444))

  (setq cider-prompt-for-project-on-connect nil)

  (defun new-shell ()
    (interactive)
    (shell
     (generate-new-buffer
      (generate-new-buffer-name "*shell*"))))
  (global-set-key (kbd "C-c s") 'new-shell)

  (global-set-key (kbd "C-c T")
                  (lambda ()
                    (interactive)
                    (insert "TODO")))

  ;;  http://stackoverflow.com/a/17984479
  (defun reverse-other-window ()
    (interactive)
    (other-window -1))
  ;; (global-set-key (kbd "M-j") 'other-window)
  ;; (global-set-key (kbd "M-k") 'reverse-other-window)
  (global-set-key (kbd "<C-tab>") 'other-window)
  (global-set-key (kbd "<backtab>") 'reverse-other-window)

;;;;;;;; bidi
  (defun bidi ()
    (interactive)
    (setq bidi-display-reordering t)
    )
  (defun unbidi ()
    (interactive)
    (setq bidi-display-reordering nil)
    )
  (defun bidi-fix-ltr ()
    (interactive)
    (setq bidi-paragraph-direction 'left-to-right)
    )
  (defun bidi-fix-rtl ()
    (interactive)
    (setq bidi-paragraph-direction 'right-to-left)
    )
  (defun bidi-unfix ()
    (interactive)
    (setq bidi-paragraph-direction nil)
    )
;;;;;;;;

  (setq evil-hybrid-state-cursor '("skyblue2" box))
  
  (defun cider-repl-prettify ()
    (interactive)
    (progn
      (beginning-of-buffer)
      (replace-regexp "\] " "]\n") 
      (beginning-of-buffer)
      (replace-regexp "\> #" ">\n#")
      (beginning-of-buffer)
      (replace-regexp "\} " "}\n")
      (beginning-of-buffer)
      (replace-regexp "\) " ")\n")
      (beginning-of-buffer)
      (replace-regexp ", " ",\n")
      (indent-region (point-min) (point-max))
      (end-of-buffer)))

  (add-hook 'cider-repl-mode-hook
            (lambda ()
              (local-set-key (kbd "<return>") 'cider-repl-return)
              (local-set-key (kbd "C-l")  'cider-repl-clear-buffer)))

  (spacemacs/set-leader-keys
    "RET"
    (lambda ()
      (interactive)
      (progn (evil-append-line 1)
             (cider-pprint-eval-last-sexp)
             (evil-normal-state))))

  (global-set-key (kbd "C-c SPC") 'cider-repl-clear-buffer)

  (global-set-key (kbd "C-c t") 'cider-repl-prettify)
  ;; (global-set-key (kbd "<f12>") 'iedit-mode)
  (global-set-key (kbd "C-c i") 'iedit-mode)
  (global-set-key (kbd "C-c b") 'browse-url)
  (global-set-key (kbd "<f5>") 'browse-url)

  ;; (global-set-key (kbd "C-c 0") 'sp-forward-slrp-sexp)
  ;; (global-set-key (kbd "C-0") 'sp-forward-slurp-sexp)
  ;; (global-set-key (kbd "C-c -") 'sp-splice-sexp)
  ;; (global-set-key (kbd "C--") 'sp-splice-sexp)
  (global-set-key (kbd "C-c =") 'imenu)

  (global-set-key (kbd "C-q") 'bury-buffer)

  (defun cider-eval-up ()
    (interactive)
    (progn (backward-up-list)
           (forward-sexp)
           (cider-eval-last-sexp)))

  (global-set-key (kbd "M-C-z") 'cider-eval-up)

  (defun notifications-log ()
    (interactive)
    (progn (find-file "~/.cache/notify-osd.log")
           (auto-revert-mode t)))
  (global-set-key (kbd "C-c n") 'notifications-log)

  ;; (global-set-key (kbd "SPC") 'avy-goto-char)

;;;;;;;; 
  (setq dired-recursive-copies (quote always))
  (setq dired-recursive-deletes (quote top))
  (setq dired-dwim-target t)

  ;; ;; http://lists.gnu.org/archive/html/help-gnu-emacs/2002-10/msg00556.html
  (defun dired-copy-filename ()
    "push the path and filename of the file under the point to the kill ring"
    (interactive)
    (message "added %s to kill ring" (kill-new (dired-get-filename))))
  (add-hook 'dired-mode-hook
            '(lambda ()
               ;;(highline-mode)
               (bidi)
               (bidi-fix-ltr)
               (define-key dired-mode-map "c"
                 'dired-copy-filename
                 )
               ;; (define-key dired-mode-map "L"
               ;;   'dired-external-apps-open-with-libreoffice
               ;;   )
               ;; (define-key dired-mode-map "P"
               ;;   'dired-external-apps-open-with-xpdf
               ;;   )
               ;; (define-key dired-mode-map "E"
               ;;   'dired-external-apps-open-with-evince
               ;;   )
               ;; )
               ))

  (setq wdired-allow-to-change-permissions t)
;;;;;;;;  

  (defun require-dsvn ()
    (interactive)
    (require 'dsvn))

;;;;;;;;
  (display-time)

  (setq-default git-enable-magit-svn-plugin t)

                                        ;(global-set-key (kbd "C-`") 'other-window)

  ;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; ;; Replace "sbcl" with the path to your implementation
  ;; (setq inferior-lisp-program "sbcl")
  ;; (global-set-key (kbd "<f12>") 'slime-selector)



  ;; https://www.bunkus.org/blog/2009/12/switching-identifier-naming-style-between-camel-case-and-c-style-in-emacs/
  (defun mo-toggle-identifier-naming-style ()
    "Toggles the symbol at point between lisp-style naming,
    e.g. `hello-world-string', and camel case,
    e.g. `HelloWorldString'."
    (interactive)
    (let* ((symbol-pos (bounds-of-thing-at-point 'symbol))
           case-fold-search symbol-at-point cstyle regexp func)
      (unless symbol-pos
        (error "No symbol at point"))
      (save-excursion
        (narrow-to-region (car symbol-pos) (cdr symbol-pos))
        (setq cstyle (string-match-p "-" (buffer-string))
              regexp (if cstyle "\\(?:\\-<\\|-\\)\\(\\w\\)" "\\([A-Z]\\)")
              func (if cstyle
                       'capitalize
                     (lambda (s)
                       (concat (if (= (match-beginning 1)
                                      (car symbol-pos))
                                   ""
                                 "-")
                               (downcase s)))))
        (goto-char (point-min))
        (while (re-search-forward regexp nil t)
          (replace-match (funcall func (match-string 1))
                         t nil))
        (widen))))
  (define-key global-map (kbd "C-c -") 'mo-toggle-identifier-naming-style)


  (setq browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "firefox")

  ;; https://gist.github.com/areina/3879626
  ;; https://vxlabs.com/2014/06/06/configuring-emacs-mu4e-with-nullmailer-offlineimap-and-multiple-identities/

  ;; (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
  ;; (require 'mu4e)

  ;; ;; default
  ;; (setq mu4e-maildir (expand-file-name "~/Maildir"))


  ;; ;; show full addresses in view message (instead of just names)
  ;; ;; toggle per name with M-RET
  ;; (setq mu4e-view-show-addresses t)


  ;; (setq mu4e-drafts-folder "/[Gmail].Drafts")
  ;; (setq mu4e-sent-folder   "/[Gmail].Sent Mail")
  ;; (setq mu4e-trash-folder  "/[Gmail].Trash")

  ;; ;; don't save message to Sent Messages, GMail/IMAP will take care of this
  ;; (setq mu4e-sent-messages-behavior 'delete)

  ;; ;; setup some handy shortcuts
  ;; (setq mu4e-maildir-shortcuts
  ;;       '(("/INBOX"             . ?i)
  ;;         ("/[Gmail].Sent Mail" . ?s)
  ;;         ("/[Gmail].Trash"     . ?t)))

  ;; ;; allow for updating mail using 'U' in the main view:
  ;; (setq mu4e-get-mail-command "offlineimap")

  ;; ;; something about ourselves
  ;; ;; I don't use a signature...
  ;; (setq
  ;;  user-mail-address "daniel@madlan.co.il"
  ;;  user-full-name  "Daniel Slutsky"
  ;;  ;; message-signature
  ;;  ;;  (concat
  ;;  ;;    "Foo X. Bar\n"
  ;;  ;;    "http://www.example.com\n")
  ;;  )


  ;; ;; attachments go here
  ;; (setq mu4e-attachment-dir "~/Downloads")


  ;; ;; (setq message-send-mail-function ‘message-send-mail-with-sendmail)

  ;; (require 'smtpmail)

  ;; (setq message-send-mail-function 'smtpmail-send-it
  ;;       starttls-use-gnutls t
  ;;       smtpmail-starttls-credentials
  ;;       '(("smtp.gmail.com" 587 nil nil))
  ;;       smtpmail-auth-credentials
  ;;       (expand-file-name "~/.authinfo.gpg")
  ;;       smtpmail-default-smtp-server "smtp.gmail.com"
  ;;       smtpmail-smtp-server "smtp.gmail.com"
  ;;       smtpmail-smtp-service 587
  ;;       smtpmail-debug-info t)


  ;; https://github.com/syl20bnr/spacemacs/issues/2222
(use-package xclip
      :defer t
      :init
      (defun copy-to-clipboard ()
        "Copies selection to x-clipboard."
        (interactive)
        (if (display-graphic-p)
            (progn
              (message "Yanked region to x-clipboard!")
              (call-interactively 'clipboard-kill-ring-save)
              )
          (if (region-active-p)
              (progn
                (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
                (message "Yanked region to clipboard!")
                (deactivate-mark))
            (message "No region active; can't yank to clipboard!")))
        )

      (defun paste-from-clipboard ()
        "Pastes from x-clipboard."
        (interactive)
        (if (display-graphic-p)
            (progn
              (clipboard-yank)
              (message "graphics active")
              )
          (insert (shell-command-to-string "xsel -o -b"))
          )
        ))


(defun set-buffer-background (rgb)
  "changes current buffer's background to a given color"
  (progn
    (require 'hexrgb)
    (setq face-symbol (gensym "face-"))
    (make-face face-symbol)
    (buffer-face-set face-symbol)
    ;;(set-face-background face-symbol (color-darken-name "black" (- (random 20))))
    (setq new-color
          (hexrgb-rgb-to-hex
           (car rgb)
           (car (cdr rgb))
           (car (cdr (cdr rgb)))))
    (set-face-background face-symbol new-color)
    (message (concat "changed to " new-color))))
(defun randomize-buffer-background ()
  "changes current buffer's background to a random color (close to the defualt of this face)"
  (interactive)
  (progn
    (setq rgb (mapcar
               (function (lambda (x) (let
                                         ((y (* 1 (+ x (/ (- (random 100) 50) 1000.0)))))
                                       (if
                                           (> y 1)
                                           1 ;;(- 2 y)
                                         (if
                                             (< y 0)
                                             0 ;;(- y)
                                           y)))))
               (color-name-to-rgb (face-background 'default))))
    (set-buffer-background rgb)))
;;(add-hook 'buffer-list-changed-hook 'randomize-buffer-background)


(spacemacs/set-leader-keys "SPC" 'avy-goto-char-timer)
(spacemacs/set-leader-keys "," 'hs-toggle-hiding)
(spacemacs/set-leader-keys "." 'hs-hide-all)
(spacemacs/set-leader-keys "`" 'randomize-buffer-background)


(add-hook 'fsharp-mode
          (lambda ()
            (fsharp-load-buffer-file)))

(setq tramp-default-method "ssh")
(setq tramp-auto-save-directory "~/tmp/tramp/")
;; http://emacs.stackexchange.com/a/17579
(setq projectile-mode-line "Projectile")
(setq tramp-verbose 7)

)


;; ;; Do not write anything past this comment. This is where Emacs will
;; ;; auto-generate custom variable definitions.
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(browse-url-browser-function (quote browse-url-chromium))
;;  '(cider-prompt-for-project-on-connect nil)
;;  '(cider-prompt-for-symbol nil)
;;  '(cider-prompt-save-file-on-load nil)
;;  '(cider-repl-display-in-current-window t)
;;  '(cider-repl-pop-to-buffer-on-connect t)
;;  '(cider-repl-use-clojure-font-lock t)
;;  '(cider-show-error-buffer (quote except-in-repl)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:foreground "#232333" :background "#c0c0c0"))))
;;  '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
;;  '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-prompt-for-project-on-connect nil)
 '(cider-prompt-for-symbol nil)
 '(cider-prompt-save-file-on-load nil t)
 '(cider-repl-display-in-current-window t)
 '(cider-repl-pop-to-buffer-on-connect t t)
 '(jabber-account-list
   (quote
    (("daniel@madlan.co.il"
      (:network-server . "talk.google.com")
      (:port . 5223)
      (:connection-type . ssl)))))
 '(package-selected-packages
   (quote
    (uuidgen thrift powerline tablist spinner org-download mu4e-maildirs-extension mu4e-alert ht alert log4e gntp markdown-mode livid-mode skewer-mode simple-httpd live-py-mode link-hint json-snatcher json-reformat multiple-cursors js2-mode fsm hydra parent-mode projectile request haml-mode gitignore-mode flx eyebrowse evil-visual-mark-mode magit magit-popup git-commit with-editor smartparens iedit evil-ediff anzu evil goto-chg undo-tree ctable queue fsharp-mode flycheck company-anaconda anaconda-mode ws-butler wolfram-mode window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe use-package toc-org tagedit stan-mode sql-indent spacemacs-theme spaceline smooth-scrolling smex smeargle slim-mode scss-mode scad-mode sass-mode restart-emacs rainbow-delimiters quelpa qml-mode pyvenv pytest pyenv-mode py-yapf popwin pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode pdf-tools pcre2el paradox page-break-lines orgit org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree move-text mmm-mode matlab-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme less-css-mode json-mode js2-refactor js-doc jade-mode jabber info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu ess-smart-equals ess-R-object-popup ess-R-data-view emmet-mode elisp-slime-nav dsvn drupal-mode define-word cython-mode company-web company-tern company-statistics company-quickhelp coffee-mode clj-refactor clean-aindent-mode cider-eval-sexp-fu buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-compile arduino-mode aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
