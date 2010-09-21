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
 "l3skip-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("skip_new:N" TeX-arg-macro)
     '("skip_new:c" "arg1")
     '("skip_zero:N" TeX-arg-macro)
     '("skip_zero:c" "arg1")
     '("skip_gzero:N" TeX-arg-macro)
     '("skip_gzero:c" "arg1")
     '("skip_set:Nn" TeX-arg-macro "skip value")
     '("skip_set:cn" "arg1" "arg2")
     '("skip_gset:Nn" TeX-arg-macro "arg2")
     '("skip_gset:cn" "arg1" "arg2")
     '("skip_add:Nn" TeX-arg-macro "length")
     '("skip_add:cn" "arg1" "arg2")
     '("skip_gadd:Nn" TeX-arg-macro "arg2")
     '("skip_gadd:cn" "arg1" "arg2")
     '("skip_sub:Nn" TeX-arg-macro "arg2")
     '("skip_gsub:Nn" TeX-arg-macro "length")
     '("skip_use:N" TeX-arg-macro)
     '("skip_use:c" "arg1")
     '("skip_show:N" TeX-arg-macro)
     '("skip_show:c" "arg1")
     '("skip_if_infinite_glue_p:n" "arg1")
     '("skip_if_infinite_glue:nT" "skip" "true")
     '("skip_if_infinite_glue:nF" "skip" "false")
     '("skip_if_infinite_glue:nTF" "skip" "true" "false")
     '("skip_eval:n" "skip expr")
     '("dim_new:N" TeX-arg-macro)
     '("dim_new:c" "arg1")
     '("dim_zero:N" TeX-arg-macro)
     '("dim_zero:c" "arg1")
     '("dim_gzero:N" TeX-arg-macro)
     '("dim_gzero:c" "arg1")
     '("dim_set:Nn" TeX-arg-macro "dim value")
     '("dim_set:Nc" TeX-arg-macro "arg2")
     '("dim_set:cn" "arg1" "arg2")
     '("dim_gset:Nn" TeX-arg-macro "arg2")
     '("dim_gset:Nc" TeX-arg-macro "arg2")
     '("dim_gset:cn" "arg1" "arg2")
     '("dim_gset:cc" "arg1" "arg2")
     '("dim_add:Nn" TeX-arg-macro "length")
     '("dim_add:Nc" TeX-arg-macro "arg2")
     '("dim_add:cn" "arg1" "arg2")
     '("dim_gadd:Nn" TeX-arg-macro "arg2")
     '("dim_gadd:cn" "arg1" "arg2")
     '("dim_sub:Nn" TeX-arg-macro "arg2")
     '("dim_sub:Nc" TeX-arg-macro "arg2")
     '("dim_sub:cn" "arg1" "arg2")
     '("dim_gsub:Nn" TeX-arg-macro "length")
     '("dim_gsub:cn" "arg1" "arg2")
     '("dim_use:N" TeX-arg-macro)
     '("dim_use:c" "arg1")
     '("dim_show:N" TeX-arg-macro)
     '("dim_show:c" "arg1")
     '("dim_eval:n" "dim expr")
     '("if_dim:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("dim_while_do:nNnn" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("dim_until_do:nNnn" "arg1" TeX-arg-macro "arg3" "arg4")
     '("dim_do_while:nNnn" "arg1" TeX-arg-macro "arg3" "arg4")
     '("dim_do_until:nNnn" "arg1" TeX-arg-macro "arg3" "arg4")
     '("muskip_new:N" TeX-arg-macro)
     '("muskip_set:Nn" TeX-arg-macro "muskip value")
     '("muskip_gset:Nn" TeX-arg-macro "arg2")
     '("muskip_add:Nn" TeX-arg-macro "length")
     '("muskip_gadd:Nn" TeX-arg-macro "arg2")
     '("muskip_sub:Nn" TeX-arg-macro "arg2")
     '("muskip_gsub:Nn" TeX-arg-macro "length")
     '("muskip_use:N" TeX-arg-macro)
     '("muskip_show:N" TeX-arg-macro)
     "c_max_skip"
     "c_zero_skip"
     "l_tmpa_skip"
     "l_tmpb_skip"
     "l_tmpc_skip"
     "g_tmpa_skip"
     "g_tmpb_skip"
     "c_max_dim"
     "c_zero_dim"
     "l_tmpa_dim"
     "l_tmpb_dim"
     "l_tmpc_dim"
     "l_tmpd_dim"
     "g_tmpa_dim"
     "g_tmpb_dim"))))
