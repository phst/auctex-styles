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
 "l3num"
 (function
  (lambda ()
    (TeX-add-symbols
     '("num_new:N" TeX-arg-macro)
     '("num_new:c" "arg1")
     '("num_incr:N" TeX-arg-macro)
     '("num_incr:c" "arg1")
     '("num_gincr:N" TeX-arg-macro)
     '("num_gincr:c" "arg1")
     '("num_decr:N" TeX-arg-macro)
     '("num_decr:c" "arg1")
     '("num_gdecr:N" TeX-arg-macro)
     '("num_gdecr:c" "arg1")
     '("num_zero:N" TeX-arg-macro)
     '("num_zero:c" "arg1")
     '("num_gzero:N" TeX-arg-macro)
     '("num_gzero:c" "arg1")
     '("num_set:Nn" TeX-arg-macro "integer")
     '("num_set:cn" "arg1" "arg2")
     '("num_gset:Nn" TeX-arg-macro "arg2")
     '("num_gset:cn" "arg1" "arg2")
     '("num_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("num_set_eq:cN" "arg1" TeX-arg-macro)
     '("num_set_eq:Nc" TeX-arg-macro "arg2")
     '("num_set_eq:cc" "arg1" "arg2")
     '("num_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("num_gset_eq:cN" "arg1" TeX-arg-macro)
     '("num_gset_eq:Nc" TeX-arg-macro "arg2")
     '("num_gset_eq:cc" "arg1" "arg2")
     '("num_add:Nn" TeX-arg-macro "integer")
     '("num_add:cn" "arg1" "arg2")
     '("num_gadd:Nn" TeX-arg-macro "arg2")
     '("num_gadd:cn" "arg1" "arg2")
     '("num_use:N" TeX-arg-macro)
     '("num_use:c" "arg1")
     '("num_show:N" TeX-arg-macro)
     '("num_show:c" "arg1")
     '("if_num:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     "c_max_register_num"
     "l_tmpa_num"
     "l_tmpb_num"
     "l_tmpc_num"
     "g_tmpa_num"
     "g_tmpb_num"))))
