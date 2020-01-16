(setq
 ;; window 分割時、画面外に出る文章を折り返す
 truncate-partial-width-windows nil
 ;; オートセーブの場所を指定する
 backup-directory-alist `((".*" . ,(expand-file-name "auto-save-file" my-cache-dir)))
 auto-save-file-name-transforms `((".*" ,(expand-file-name "auto-save-file" my-cache-dir) t))
 auto-save-list-file-prefix (expand-file-name "auto-save-list/.saves-" my-cache-dir)
 ;; ロックファイルを作成しない
 create-lockfiles nil
 ;; find fileで大文字小文字を区別しない
 read-file-name-completion-ignore-case t
 ;; 履歴をたくさん保存する
 history-length 1000
 ;; 内部での日付/時間表記は英語で行う
 system-time-locale "C"
 ;; meta keyとしてalt keyを使う
 x-alt-keysym 'meta)

;; yes or no を y or n に変更
(defalias 'yes-or-no-p 'y-or-n-p)
;; M-x exit で Emacs を終了する
(defalias 'exit 'save-buffers-kill-emacs)

;; font-lock (色) の設定 
(global-font-lock-mode t)
;; 括弧を目立たせる
(show-paren-mode t)
;; 対応する括弧を自動入力
(electric-pair-mode t)
;; 行番号・桁番号を表示する
(line-number-mode 1)
(column-number-mode 1)
;; ツールバー、メニューバーを表示しない
(tool-bar-mode 0)
(menu-bar-mode 0)

;; Commands History を永久保存
(setq desktop-dirname "~/.emacs.cache/"
      desktop-path (list desktop-dirname)
      desktop-globals-to-save '(extended-command-history)
      desktop-files-not-to-save "")
(desktop-save-mode 1)

;; カーソル位置に応じた find-file
(ffap-bindings)

;; 日本語とUTF-8の設定
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; backspace keyの有効化
(global-set-key "\C-h" `delete-backward-char)

;; backup fileを残さない
(setq create-lockfiles nil)
(setq auto-save-list-file-prefix nil)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; yes or no を y or n に変更
(defalias 'yes-or-no-p 'y-or-n-p)

;; clipboardからの貼り付け可
(cond (window-system
  (setq x-select-enable-clipboard t)
))
