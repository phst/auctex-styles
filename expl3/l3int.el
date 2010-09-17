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
 "l3int"
 (function
  (lambda ()
    (TeX-add-symbols
     '("int_new:N" TeX-arg-macro)
     '("int_new:c" "arg1")
     '("int_incr:N" TeX-arg-macro)
     '("int_incr:c" "arg1")
     '("int_gincr:N" TeX-arg-macro)
     '("int_gincr:c" "arg1")
     '("int_decr:N" TeX-arg-macro)
     '("int_decr:c" "arg1")
     '("int_gdecr:N" TeX-arg-macro)
     '("int_gdecr:c" "arg1")
     '("int_set:Nn" TeX-arg-macro "integer expr")
     '("int_set:cn" "arg1" "arg2")
     '("int_gset:Nn" TeX-arg-macro "arg2")
     '("int_gset:cn" "arg1" "arg2")
     '("int_zero:N" TeX-arg-macro)
     '("int_zero:c" "arg1")
     '("int_gzero:N" TeX-arg-macro)
     '("int_gzero:c" "arg1")
     '("int_add:Nn" TeX-arg-macro "integer expr")
     '("int_add:cn" "arg1" "arg2")
     '("int_gadd:Nn" TeX-arg-macro "arg2")
     '("int_gadd:cn" "arg1" "arg2")
     '("int_sub:Nn" TeX-arg-macro "arg2")
     '("int_sub:cn" "arg1" "arg2")
     '("int_gsub:Nn" TeX-arg-macro "integer expr")
     '("int_gsub:cn" "arg1" "arg2")
     '("int_use:N" TeX-arg-macro)
     '("int_use:c" "arg1")
     '("int_show:N" TeX-arg-macro)
     '("int_show:c" "arg1")
     '("int_to_roman:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("int_to_number:w" TeX-arg-macro TeX-arg-macro)
     '("int_const:Nn" TeX-arg-macro "value")
     '("int_convert_from_base_ten:nn" "number" "base")
     '("int_convert_to_base_ten:nn" "number" "base")
     '("int_advance:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("int_convert_number_to_letter:n" "integer expression")
     '("int_get_sign_and_digits:n" "number")
     '("int_get_sign:n" "arg1")
     '("int_get_digits:n" "arg1")
     "c_minus_one"
     "c_zero"
     "c_one"
     "c_two"
     "c_three"
     "c_four"
     "c_five"
     "c_six"
     "c_seven"
     "c_eight"
     "c_nine"
     "c_ten"
     "c_eleven"
     "c_twelve"
     "c_thirteen"
     "c_fourteen"
     "c_fifteen"
     "c_sixteen"
     "c_thirty_two"
     "c_hundred_one"
     "c_twohundred_fifty_five"
     "c_twohundred_fifty_six"
     "c_thousand"
     "c_ten_thousand"
     "c_ten_thousand_one"
     "c_ten_thousand_two"
     "c_ten_thousand_three"
     "c_ten_thousand_four"
     "c_twenty_thousand"
     "c_max_int"
     "c_max_register_int"
     "l_tmpa_int"
     "l_tmpb_int"
     "l_tmpc_int"
     "g_tmpa_int"
     "g_tmpb_int"))))
