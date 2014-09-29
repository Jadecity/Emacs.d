;; Setting up matlab-mode
(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
(load-library "matlab-load")
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -nosplash")))
(add-hook 'matlab-mode-hook 'auto-complete-mode)
(setq auto-mode-alist
    (cons
     '("\\.m$" . matlab-mode)
     auto-mode-alist))