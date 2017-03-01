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
     yaml
     csv
     csvranger
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
     exwm
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     version-control
     jabber
     themes-megapack
     python
     evil-cleverparens)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(dsvn
                                      pdf-tools
                                      magithub)
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
   ;; dotspacemacs-themes '(;; leuven
   ;;                       ;; spacemacs-light
   ;;                       ;; farmhouse
   ;;                       ;; default
   ;;                       ;; whiteboard
   ;;                       ;; flatui
   ;;                       ;; soft-stone
   ;;                       anti-zenburn
   ;;                       ;; spacemacs-dark
   ;;                       ;; solarized-light
   ;;                       ;; solarized-dark
   ;;                       ;; monokai
   ;;                       ;; zenburn
   ;;                       ;; gandalf
   ;;                       )
   ;; if non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("ubuntu mono"
                               :size 12
                               :weight normal
                               :width normal
                                        ; :powerline-scale 1.1
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

  (use-package magithub
    :after magit
    :config (magithub-feature-autoinject t))


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

  (defun connect-7002 ()
    (interactive)
    (cider-connect "localhost" 7002))

  (setq cider-prompt-for-project-on-connect nil)

  (defun new-shell ()
    (interactive)
    (shell
     (generate-new-buffer
      (generate-new-buffer-name "*shell*"))))
  (global-set-key (kbd "C-c s") 'shell)
  (global-set-key (kbd "C-c n") 'new-shell)
  
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

  ;; from a Chestnut generated README.md:
  (setq cider-cljs-lein-repl
        "(do (user/run)
           (user/browser-repl))")

  (setq clojure-align-forms-automatically t)

  (setq evil-hybrid-state-cursor '("skyblue2" box))
  
  (defun cider-prettify ()
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
    'cider-pprint-eval-last-sexp
    ;; (lambda ()
    ;;   (interactive)
    ;;   (progn (evil-append-line 1)
    ;;          (cider-eval-print-last-sexp)
    ;;          ;(cider-prettify)
    ;;          (evil-normal-state))
    ;;   ;; (progn (evil-append-line 1)
    ;;   ;;        (cider-pprint-eval-last-sexp-to-repl)
    ;;   ;;        (spacemacs/split-window-horizontally-and-switch)
    ;;   ;;        (cider-switch-to-repl-buffer)
    ;;   ;;        ;; (cider-prettify)
    ;;   ;;        (delete-window)
    ;;   ;;        (evil-normal-state))
    ;;   )
    )
  


  (global-set-key (kbd "C-c SPC") 'cider-repl-clear-buffer)

  (spacemacs/set-leader-keys "m p" 'cider-prettify)

  (defun cider-renew ()
    (interactive)
    (cider-interactive-eval "(require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh-all) (require 'madlan.core :reload)"))

  (spacemacs/set-leader-keys "m n" 'cider-renew)

  (defun query1 ()
    (interactive)
    (insert "(query id [:<= :__id__ 1])")
    (newline))
  (spacemacs/set-leader-keys "m q 1" 'query1)
  (defun query-summary ()
    (interactive)
    (insert "(madlan.util.mseq/summary (query id))")
    (newline))
  (spacemacs/set-leader-keys "m q s" 'query-summary)
  
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
  ;; (global-set-key (kbd "C-c n") 'notifications-log)

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
                                           ((y (* 1 (+ x (/ (- (random 100) 50) 2000.0)))))
                                         (if
                                             (> y 1)
                                             1 ;;(- 2 y)
                                           (if
                                               (< y 0)
                                               0 ;;(- y)
                                             y)))))
                 (color-name-to-rgb (face-background 'default))))
      (set-buffer-background rgb)))
  (spacemacs/set-leader-keys "T r" 'randomize-buffer-background)
  ;;(add-hook 'buffer-list-changed-hook 'randomize-buffer-background)

  (spacemacs/set-leader-keys "h h" 'helm-apropos)

  (spacemacs/set-leader-keys "SPC" 'avy-goto-char-timer)
  (spacemacs/set-leader-keys "," 'hs-toggle-hiding)
  (spacemacs/set-leader-keys "." 'hs-hide-all)
  (spacemacs/set-leader-keys "`" 'randomize-buffer-background)
  (spacemacs/set-leader-keys "d" 'mark-sexp)
  (spacemacs/set-leader-keys "o" 'other-window)


  (add-hook 'fsharp-mode
            (lambda ()
              (fsharp-load-buffer-file)))
  (spacemacs/set-leader-keys "T g" 'grey)


  (setq tramp-default-method "ssh")
  (setq tramp-auto-save-directory "~/tmp/tramp/")
  ;; http://emacs.stackexchange.com/a/17579
  (setq projectile-mode-line "Projectile")
  (setq tramp-verbose 7)


  (defun grey ()
    (interactive)
    (progn
      (set-background-color "#d9d9d9")))



  (defun organize-cider-buffers ()
    (interactive)
    (progn
      (switch-to-buffer (cider-current-repl-buffer))
      (spacemacs/toggle-maximize-buffer)
      (split-window)
      (switch-to-buffer "*cider-result*")
      (split-window)
      (switch-to-buffer "*nrepl-server world*")
      (grey)))


  (spacemacs/toggle-evil-cleverparens-on)
  (add-hook 'clojure-mode-hook #'evil-cleverparens-mode)

  ;"89UY8P-V9Y262P6WH"

  ;; https://www.emacswiki.org/emacs/InsertDate
  (defun insert-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
                   ((not prefix) "%d.%m.%Y")
                   ((equal prefix '(4)) "%Y-%m-%d")
                   ((equal prefix '(16)) "%A, %d. %B %Y")))
          (system-time-locale "de_DE"))
      (insert (format-time-string format))))

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
 '(ace-window-display-mode nil)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#c0c0c0" "#336c6c" "#806080" "#0f2050" "#732f2c" "#23733c" "#6c1f1c" "#232333"])
 '(cider-prompt-for-project-on-connect nil)
 '(cider-prompt-for-symbol nil)
 '(cider-prompt-save-file-on-load nil)
 '(cider-repl-display-in-current-window t)
 '(cider-repl-pop-to-buffer-on-connect t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("5cd0afd0ca01648e1fff95a7a7f8abec925bd654915153fb39ee8e72a8b56a1f" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#c7c7c7" t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-background-colors (quote ("0x777777" "0x777777" "0x777777" "0x777777")))
 '(jabber-account-list
   (quote
    (("daniel@madlan.co.il"
      (:network-server . "talk.google.com")
      (:port . 5223)
      (:connection-type . ssl)))))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (moz-controller magithub wolfram evil-cleverparens git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl zonokai-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme lush-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme flatland-theme firebelly-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme ample-zen-theme ample-theme alect-themes afternoon-theme anti-zenburn-theme exwm-x exwm color-theme-sanityinc-solarized color-theme-solarized twilight-bright-theme autumn-light-theme hydandata-light-theme light-soap-theme yaml-mode gandalf-theme zenburn-theme monokai-theme solarized-theme anti-zenburn-theme align-cljlet tangotango-theme hexrgb soft-charcoal-theme soft-morning-theme soft-stone-theme farmhouse-theme flatui-theme hide-comnt pcache csv-mode atomic-chrome yapfify py-isort pug-mode org-projectile org mwim git-link evil-unimpaired dumb-jump diminish column-enforce-mode clojure-snippets seq ivy counsel ag ess julia-mode php-mode web-completion-data dash-functional tern pos-tip company inflections edn cider paredit peg eval-sexp-fu highlight pkg-info clojure-mode epl yasnippet packed pythonic f dash s helm avy helm-core async auto-complete popup package-build bind-key bind-map ranger uuidgen thrift powerline tablist spinner org-download mu4e-maildirs-extension mu4e-alert ht alert log4e gntp markdown-mode livid-mode skewer-mode simple-httpd live-py-mode link-hint json-snatcher json-reformat multiple-cursors js2-mode fsm hydra parent-mode projectile request haml-mode gitignore-mode flx eyebrowse evil-visual-mark-mode magit magit-popup git-commit with-editor smartparens iedit evil-ediff anzu evil goto-chg undo-tree ctable queue fsharp-mode flycheck company-anaconda anaconda-mode ws-butler wolfram-mode window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe use-package toc-org tagedit stan-mode sql-indent spacemacs-theme spaceline smooth-scrolling smex smeargle slim-mode scss-mode scad-mode sass-mode restart-emacs rainbow-delimiters quelpa qml-mode pyvenv pytest pyenv-mode py-yapf popwin pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode pdf-tools pcre2el paradox page-break-lines orgit org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree move-text mmm-mode matlab-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme less-css-mode json-mode js2-refactor js-doc jade-mode jabber info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu ess-smart-equals ess-R-object-popup ess-R-data-view emmet-mode elisp-slime-nav dsvn drupal-mode define-word cython-mode company-web company-tern company-statistics company-quickhelp coffee-mode clj-refactor clean-aindent-mode cider-eval-sexp-fu buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-compile arduino-mode aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background "#ecf0f1")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((30 . "#e74c3c")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9")
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))







