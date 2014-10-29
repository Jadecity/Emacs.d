;; Setting up matlab-mode
(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
(load-library "matlab-load")
(matlab-cedet-setup)
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -nosplash")))
(add-hook 'matlab-mode-hook 'auto-complete-mode)
(setq auto-mode-alist
    (cons
     '("\\.m$" . matlab-mode)
     auto-mode-alist))
;; remapping key
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

;;set background color
(set-background-color "#BBDEB6")

;;add yasnippet
;;(add-to-list 'load-path
;;              "~/.emacs.d/yasnippet")
;;(require 'yasnippet)
;;(yas-global-mode 1)

;;add autocomplete
(add-to-list 'load-path "~/.emacs.d/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete//ac-dict")
(ac-config-default)
