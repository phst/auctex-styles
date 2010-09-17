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
 "l3calc"
 (function
  (lambda ()
    (TeX-add-symbols
     '("calc_int_set:Nn" TeX-arg-macro "calc expression")
     '("calc_int_gset:Nn" TeX-arg-macro "arg2")
     '("calc_int_add:Nn" TeX-arg-macro "arg2")
     '("calc_int_gadd:Nn" TeX-arg-macro "arg2")
     '("calc_int_sub:Nn" TeX-arg-macro "arg2")
     '("calc_int_gsub:Nn" TeX-arg-macro "arg2")
     '("calc_dim_set:Nn" TeX-arg-macro "calc expression")
     '("calc_dim_gset:Nn" TeX-arg-macro "arg2")
     '("calc_dim_add:Nn" TeX-arg-macro "arg2")
     '("calc_dim_gadd:Nn" TeX-arg-macro "arg2")
     '("calc_dim_sub:Nn" TeX-arg-macro "arg2")
     '("calc_dim_gsub:Nn" TeX-arg-macro "arg2")
     '("calc_skip_set:Nn" TeX-arg-macro "calc expression")
     '("calc_skip_gset:Nn" TeX-arg-macro "arg2")
     '("calc_skip_add:Nn" TeX-arg-macro "arg2")
     '("calc_skip_gadd:Nn" TeX-arg-macro "arg2")
     '("calc_skip_sub:Nn" TeX-arg-macro "arg2")
     '("calc_skip_gsub:Nn" TeX-arg-macro "arg2")
     '("calc_muskip_set:Nn" TeX-arg-macro "calc expression")
     '("calc_muskip_gset:Nn" TeX-arg-macro "arg2")
     '("calc_muskip_add:Nn" TeX-arg-macro "arg2")
     '("calc_muskip_gadd:Nn" TeX-arg-macro "arg2")
     '("calc_muskip_sub:Nn" TeX-arg-macro "arg2")
     '("calc_muskip_gsub:Nn" TeX-arg-macro "arg2")))))
