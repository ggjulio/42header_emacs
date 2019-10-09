;*******************************************************************************;
;                                                                               ;
;                                                          :::      ::::::::    ;
;    dotemacs                                            :+:      :+:    :+:    ;
;                                                      +:+ +:+         +:+      ;
;    by: thor <thor@42.fr>                           +#+  +:+       +#+         ;
;                                                  +#+#+#+#+#+   +#+            ;
;    Created: 2013/06/18 14:01:14 by thor               #+#    #+#              ;
;    Updated: 2019/08/07 21:53:49 by juligonz         ###   ########.fr        ;
;                                                                               ;
;*******************************************************************************;

; Load general features files
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))

(load "~/.emacs.d/list.el")
(load "~/.emacs.d/string.el")
(load "~/.emacs.d/comments.el")
(load "~/.emacs.d/header.el")

(autoload 'php-mode "php-mode" "Major mode for editing PHP code" t)
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

; Set default emacs configuration
(set-language-environment "UTF-8")
;(setq-default font-lock-global-modes nil)
(setq-default line-number-mode nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	  		  				 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

; Load user configuration
(if (file-exists-p "~/.myemacs") (load-file "~/.myemacs"))


;; always show line numbers
;(global-linum-mode 1)
;; insert a space if running in text mode
(if window-system
    (progn)  
  (setq linum-format "%d ")
)


;*******************************************************************************;
