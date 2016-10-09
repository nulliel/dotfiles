(mapc (lambda (entry)
        (let ((extension (car entry))
              (package (cadr entry))
              (mode (cadr (cdr entry))))
          (unless (package-installed-p package)
            (package-install package))
          (add-to-list 'auto-mode-alist `(,extension . ,mode))))
      '(("\\Berksfile\\'" ruby-mode ruby-mode)
             ("\\.css\\'" css-mode css-mode)
             ("\\.gitconfig\\'" gitconfig-mode gitconfig-mode)
             ("\\.gitignore\\'" gitignore-mode gitignore-mode)
             ("\\.html\\'" web-mode web-mode)
             ("\\.json\\'" json-mode json-mode)
             ("\\.markdown\\'" markdown-mode markdown-mode)
             ("\\.md\\'" markdown-mode markdown-mode)
             ("\\Rakefile\\'" ruby-mode ruby-mode)
             ("\.rb\\'" ruby-mode ruby-mode)))

(provide 'core-automodes)
