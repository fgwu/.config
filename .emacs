(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
         (column (c-langelem-2nd-pos c-syntactic-element))
         (offset (- (1+ column) anchor))
         (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            ;; Add kernel style
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))

(add-hook 'c-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name)))
              ;; Enable kernel mode for the appropriate files
              (when (and filename
                         (string-match (expand-file-name "~/src/linux-trees")
                                       filename))
                (setq indent-tabs-mode t)
                (setq show-trailing-whitespace t)
                (c-set-style "linux-tabs-only")))))

(setq c-basic-offset 8)

; for cscope
(require 'xcscope)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cscope-file-face ((t (:foreground "cyan"))))
 '(cscope-line-face ((t (:foreground "brightblack"))))
 '(font-lock-function-name-face ((t (:foreground "cyan")))))


; for etags
;(setq tags-table-list
;      '("/home/fenggang/3.14.0"))



;(setq mouse-wheel-scroll-amount '(0.07))
;(setq mouse-wheel-progressive-speed nil)
;(setq ring-bell-function 'ignore)

;(require 'smooth-scroll)

;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

;; mouse integration
(require 'mouse) ;; needed for iterm2 compatibility
(xterm-mouse-mode t)

(global-set-key [mouse-4] '(lambda ()
                           (interactive)
                           (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                           (interactive)
                           (scroll-up 1)))
(setq mouse-sel-mode t)
(defun track-mouse (e))

;(setq mouse-wheel-scroll-amount '(0.07))
;(setq mouse-wheel-progressive-speed nil)
;(setq ring-bell-function 'ignore)

;; ========== Support Wheel Mouse Scrolling ==========

;(mouse-wheel-mode t)
  ;; scroll one line at a time (less "jumpy" than defaults)
    
;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
    
;(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
    
;(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
    
;(setq scroll-step 1) ;; keyboard scroll one line at a time

;(setq scroll-conservatively 5)


;(global-set-key [mouse-4] (kbd "C-u 1 C-v")) ;
;(global-set-key [mouse-5] (kbd "C-u 1 M-v")) ;


(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
