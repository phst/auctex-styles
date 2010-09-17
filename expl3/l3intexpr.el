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
 "l3intexpr"
 (function
  (lambda ()
    (TeX-add-symbols
     '("intexpr_eval:n" "int~expr")
     '("intexpr_compare_p:nNn" "int~expr1" TeX-arg-macro "int~expr2")
     '("intexpr_compare:nNnT" "arg1" TeX-arg-macro "arg3" "arg4")
     '("intexpr_compare:nNnF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("intexpr_compare:nNnTF" "arg1" TeX-arg-macro "arg3" "arg4" "arg5")
     '("intexpr_max:nn" "int~expr1" "int~expr2")
     '("intexpr_min:nn" "arg1" "arg2")
     '("intexpr_abs:n" "int~expr")
     '("intexpr_if_odd:nT" "int~expr" "true")
     '("intexpr_if_odd:nF" "int~expr" "false")
     '("intexpr_if_odd:nTF" "int~expr" "true" "false")
     '("intexpr_if_odd_p:n" "arg1")
     '("intexpr_if_even:nT" "arg1" "arg2")
     '("intexpr_if_even:nF" "arg1" "arg2")
     '("intexpr_if_even:nTF" "arg1" "arg2" "arg3")
     '("intexpr_if_even_p:n" "arg1")
     '("if_num:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("intexpr_eval:w" TeX-arg-macro)
     "intexpr_eval_end:"
     '("intexpr_while_do:nn" "<int~expr1> <rel> <int~expr2>" "code")
     '("intexpr_until_do:nn" "arg1" "arg2")
     '("intexpr_do_while:nn" "arg1" "arg2")
     '("intexpr_do_until:nn" "arg1" "arg2")
     '("intexpr_while_do:nNnn" TeX-arg-macro TeX-arg-macro TeX-arg-macro "code")
     '("intexpr_until_do:nNnn" "arg1" TeX-arg-macro "arg3" "arg4")
     '("intexpr_do_while:nNnn" "arg1" TeX-arg-macro "arg3" "arg4")
     '("intexpr_do_until:nNnn" "arg1" TeX-arg-macro "arg3" "arg4")))))
