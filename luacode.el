;; Copyright (c) 2010, Philipp Stephani <st_philipp@yahoo.de>
;;
;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;; DEALINGS IN THE SOFTWARE.

(TeX-add-style-hook
 "luacode"
 (function
  (lambda ()
    (TeX-run-style-hooks "ifluatex" "luatexbase")
    (mapc
     (lambda (cmd)
       (TeX-add-symbols (list cmd t))
       (add-to-list 'LaTeX-verbatim-macros-with-braces-local cmd t))
     '("luadirect" "luaexec"))
    (make-local-variable 'LaTeX-indent-environment-list)
    (mapc
     (lambda (env)
       (LaTeX-add-environments env)
       (add-to-list 'LaTeX-verbatim-environments-local env t)
       (add-to-list 'LaTeX-indent-environment-list '(env current-indentation) t))
     '("luacode" "luacode*" "luacodestar"))
    (make-local-variable 'LaTeX-verbatim-regexp)
    (setq LaTeX-verbatim-regexp
          (concat LaTeX-verbatim-regexp "\\|luacode\\(\\*\\|star\\)?"))
    (when (fboundp 'font-latex-set-syntactic-keywords)
      (font-latex-set-syntactic-keywords)))))
