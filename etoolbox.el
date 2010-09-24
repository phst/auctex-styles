;; Copyright (c) 2010, Philipp Stephani <st_philipp@yahoo.de>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to
;; deal in the Software without restriction, including without limitation the
;; rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
;; sell copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
;; IN THE SOFTWARE.

(TeX-add-style-hook
 "etoolbox"
 (function
  (lambda ()
    (apply
     'TeX-add-symbols
     (append
      (apply
       'append
       (mapcar
        (lambda (prefix)
          (mapcar
           (lambda (suffix)
             (list
              (concat prefix "robustcmd" suffix)
              'TeX-arg-define-macro ["Arguments"] ["Optarg default"] t))
           '("" "*")))
        '("new" "renew" "provide")))
      '(("robustify" TeX-arg-macro)
        ("protecting" t)
        ("defcounter" TeX-arg-counter t)
        ("deflength" TeX-arg-macro t)
        ("AfterPreamble" t)
        ("AtEndPreamble" t)
        ("AfterEndPreamble" t)
        ("AfterEndDocument" t))
      (mapcar
       (lambda (name)
         (list name "csname" t))
       '("csdef" "csgdef" "csedef" "csxdef"
         "protected@csedef" "protected@csxdef"))
      '(("cslet" "csname" TeX-arg-macro)
        ("letcs" TeX-arg-macro "csname")
        ("csletcs" "csname-1" "csname-2")
        ("csuse" "csname")
        ("undef" TeX-arg-macro)
        ("csundef" "csname")
        ("csshow" "csname"))
      (apply
       'append
       (mapcar
        (lambda (type)
          (apply
           'append
           (mapcar
            (lambda (syntax)
              (mapcar
               (lambda (scope)
                 (list (concat (car syntax) type scope "def") (cdr syntax) t))
               '("" "g")))
            '(("" . TeX-arg-macro) ("cs" . "csname")))))
        '("num" "dim" "glue" "mu")))
      '(("expandonce" TeX-arg-macro)
        ("csexpandonce" "csname"))
      (apply
       'append
       (mapcar
        (lambda (position)
          (apply
           'append
           (mapcar
            (lambda (syntax)
              (apply
               'append
               (mapcar
                (lambda (expansion)
                  (mapcar
                   (lambda (infix)
                     (list
                      (concat (car expansion) (car syntax) infix position "to")
                      (cdr syntax) t))
                   (cdr expansion)))
                '(("" "" "g" "e" "x") ("protected@" "e" "x")))))
            '(("" . TeX-arg-macro) ("cs" . "csname")))))
        '("app" "pre")))
      '(("patchcmd" ["prefix"] TeX-arg-macro "search" "replace" "success" "failure")
        ("ifpatchable" TeX-arg-macro "search" "true" "false")
        ("ifpatchable*" TeX-arg-macro "true" "false"))
      (mapcar
       (lambda (position)
         (list (concat position "tocmd") 'TeX-arg-macro "success" "failure"))
       '("app" "pre"))
      '("tracingpatches")
      (apply
       'append
       (mapcar
        (lambda (class)
          (list
           (list (concat "new" class) "name")
           (list (concat "provide" class) "name")
           (list (concat class "true") "name")
           (list (concat class "false") "name")
           (list (concat "set" class) "name" "value")
           (list (concat "if" class) "name" "true" "false")
           (list (concat "not" class) "name" "not true" "not false")))
        '("bool" "toggle")))
      (apply
       'append
       (mapcar
        (lambda (status)
          (mapcar
           (lambda (syntax)
             (list (concat "if" (car syntax) status) (cdr syntax) "true" "false"))
           '(("" . TeX-arg-macro) ("cs" . "csname"))))
        '("" "un")))
      (apply
       'append
       (mapcar
        (lambda (test)
          (let ((temp (if (listp test) test (list test))))
            (mapcar
             (lambda (syntax)
               (list
                (concat "if" (car syntax) (car temp))
                (cdr syntax)
                (eval (cdr temp)) "true" "false"))
             '(("def" . TeX-arg-macro) ("cs" . "csname")))))
        '("macro" "param" "prefix" "protected" "ltxprotect" "empty" "void"
          ("equal" (lambda () (cdr syntax))) ("string" (lambda () "string")))))
      '(("ifstrequal" "string-1" "string-2" "true" "false")
        ("ifstrempty" "true" "false")
        ("ifblank" "true" "false")
        ("notblank" "not true" "not false"))
      (apply
       'append
       (mapcar
        (lambda (type)
          (cons
           (list (concat "if" type "comp") "expression-1" "relation" "expression-2" "true" "false")
           (mapcar
            (lambda (relation)
              (list (concat "if" type relation) "expression-1" "expression-2" "true" "false"))
            '("equal" "greater" "less"))))
        '("num" "dim")))
      '(("ifboolexpr" "expression" "true" "false")
        ("ifboolexpe" "expression" "true" "false")
        ("whileboolexpr" "expression" t)
        ("unlessboolexpr" "expression" t)
        ("DeclareListParser" TeX-arg-define-macro "separator")
        ("DeclareListParser*" TeX-arg-define-macro "separator")
        ("docsvlist" t)
        ("forcsvlist" "handler" t))
      (apply
       'append
       (mapcar
        (lambda (syntax)
          (mapcar
           (lambda (type)
             (list (concat "list" (car syntax) type "add") (cdr syntax) "item"))
           '("" "g" "e" "x")))
        '(("" . TeX-arg-macro) ("cs" . "listcsname"))))
      '(("dolistloop" TeX-arg-macro)
        ("dolistcsloop" "listcsname")
        ("forlistloop" "handler" TeX-arg-macro)
        ("forlistcsloop" "handler" "listcsname")
        ("ifinlist" "item" TeX-arg-macro "true" "false")
        ("xifinlist" "item" TeX-arg-macro "true" "false")
        ("ifinlist" "item" "listcsname" "true" "false")
        ("xifinlist" "item" "listcsname" "true" "false")
        ("rmtonum" "numeral")
        ("ifrmnum" "string" "true" "false")))))))
