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
 "l3fp"
 (function
  (lambda ()
    (TeX-add-symbols
     '("fp_new:N" TeX-arg-macro)
     '("fp_new:c" "arg1")
     '("fp_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("fp_set_eq:cN" "arg1" TeX-arg-macro)
     '("fp_set_eq:Nc" TeX-arg-macro "arg2")
     '("fp_set_eq:cc" "arg1" "arg2")
     '("fp_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("fp_gset_eq:cN" "arg1" TeX-arg-macro)
     '("fp_gset_eq:Nc" TeX-arg-macro "arg2")
     '("fp_gset_eq:cc" "arg1" "arg2")
     '("fp_zero:N" TeX-arg-macro)
     '("fp_zero:c" "arg1")
     '("fp_gzero:N" TeX-arg-macro)
     '("fp_gzero:c" "arg1")
     '("fp_set:Nn" TeX-arg-macro "arg2")
     '("fp_set:cn" "arg1" "arg2")
     '("fp_gset:Nn" TeX-arg-macro "arg2")
     '("fp_gset:cn" "arg1" "arg2")
     '("fp_set_from_dim:Nn" TeX-arg-macro "arg2")
     '("fp_set_from_dim:cn" "arg1" "arg2")
     '("fp_gset_from_dim:Nn" TeX-arg-macro "arg2")
     '("fp_gset_from_dim:cn" "arg1" "arg2")
     '("fp_use:N" TeX-arg-macro)
     '("fp_use:c" "arg1")
     '("fp_show:N" TeX-arg-macro)
     '("fp_show:c" "arg1")
     '("fp_to_int:N" TeX-arg-macro)
     '("fp_to_int:c" "arg1")
     '("fp_to_tl:N" TeX-arg-macro)
     '("fp_to_tl:c" "arg1")
     '("fp_round_figures:Nn" TeX-arg-macro "arg2")
     '("fp_round_figures:cn" "arg1" "arg2")
     '("fp_ground_figures:Nn" TeX-arg-macro "arg2")
     '("fp_ground_figures:cn" "arg1" "arg2")
     '("fp_round_places:Nn" TeX-arg-macro "arg2")
     '("fp_round_places:cn" "arg1" "arg2")
     '("fp_ground_places:Nn" TeX-arg-macro "arg2")
     '("fp_ground_places:cn" "arg1" "arg2")
     '("fp_abs:N" TeX-arg-macro)
     '("fp_abs:c" "arg1")
     '("fp_gabs:N" TeX-arg-macro)
     '("fp_gabs:c" "arg1")
     '("fp_neg:N" TeX-arg-macro)
     '("fp_neg:c" "arg1")
     '("fp_gneg:N" TeX-arg-macro)
     '("fp_gneg:c" "arg1")
     '("fp_add:Nn" TeX-arg-macro "arg2")
     '("fp_add:cn" "arg1" "arg2")
     '("fp_gadd:Nn" TeX-arg-macro "arg2")
     '("fp_gadd:cn" "arg1" "arg2")
     '("fp_sub:Nn" TeX-arg-macro "arg2")
     '("fp_sub:cn" "arg1" "arg2")
     '("fp_gsub:Nn" TeX-arg-macro "arg2")
     '("fp_gsub:cn" "arg1" "arg2")
     '("fp_mul:Nn" TeX-arg-macro "arg2")
     '("fp_mul:cn" "arg1" "arg2")
     '("fp_gmul:Nn" TeX-arg-macro "arg2")
     '("fp_gmul:cn" "arg1" "arg2")
     '("fp_div:Nn" TeX-arg-macro "arg2")
     '("fp_div:cn" "arg1" "arg2")
     '("fp_gdiv:Nn" TeX-arg-macro "arg2")
     '("fp_gdiv:cn" "arg1" "arg2")
     '("fp_sin:Nn" TeX-arg-macro "arg2")
     '("fp_sin:cn" "arg1" "arg2")
     '("fp_gsin:Nn" TeX-arg-macro "arg2")
     '("fp_gsin:cn" "arg1" "arg2")
     '("fp_cos:Nn" TeX-arg-macro "arg2")
     '("fp_cos:cn" "arg1" "arg2")
     '("fp_gcos:Nn" TeX-arg-macro "arg2")
     '("fp_gcos:cn" "arg1" "arg2")
     '("fp_tan:Nn" TeX-arg-macro "arg2")
     '("fp_tan:cn" "arg1" "arg2")
     '("fp_gtan:Nn" TeX-arg-macro "arg2")
     '("fp_gtan:cn" "arg1" "arg2")
     "c_infinity_fp"
     "c_undefined_fp"
     "c_zero_fp"))))
