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
 "l3prop"
 (function
  (lambda ()
    (TeX-add-symbols
     '("prop_new:N" TeX-arg-macro)
     '("prop_new:c" "arg1")
     '("prop_clear:N" TeX-arg-macro)
     '("prop_clear:c" "arg1")
     '("prop_gclear:N" TeX-arg-macro)
     '("prop_gclear:c" "arg1")
     '("prop_put:Nnn" TeX-arg-macro "\propkey" "token list")
     '("prop_put:NnV" TeX-arg-macro "arg2" TeX-arg-macro)
     '("prop_put:NVn" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_put:NVV" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("prop_put:cnn" "arg1" "arg2" "arg3")
     '("prop_gput:Nnn" TeX-arg-macro "arg2" "arg3")
     '("prop_gput:NVn" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_gput:Nno" TeX-arg-macro "arg2" TeX-arg-macro)
     '("prop_gput:NnV" TeX-arg-macro "arg2" TeX-arg-macro)
     '("prop_gput:Nnx" TeX-arg-macro "arg2" "arg3")
     '("prop_gput:cnn" "arg1" "arg2" "arg3")
     '("prop_gput:ccx" "arg1" "arg2" "arg3")
     '("prop_gput_if_new:Nnn" TeX-arg-macro "\propkey" "token list")
     '("prop_get:NnN" TeX-arg-macro "\propkey" TeX-arg-macro)
     '("prop_get:NVN" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("prop_get:cnN" "arg1" "arg2" TeX-arg-macro)
     '("prop_get:cVN" "arg1" TeX-arg-macro TeX-arg-macro)
     '("prop_gget:NnN" TeX-arg-macro "arg2" TeX-arg-macro)
     '("prop_gget:NVN" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("prop_gget:cnN" "arg1" "arg2" TeX-arg-macro)
     '("prop_gget:cVN" "arg1" TeX-arg-macro TeX-arg-macro)
     '("prop_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("prop_set_eq:cN" "arg1" TeX-arg-macro)
     '("prop_set_eq:Nc" TeX-arg-macro "arg2")
     '("prop_set_eq:cc" "arg1" "arg2")
     '("prop_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("prop_gset_eq:cN" "arg1" TeX-arg-macro)
     '("prop_gset_eq:Nc" TeX-arg-macro "arg2")
     '("prop_gset_eq:cc" "arg1" "arg2")
     '("prop_get_gdel:NnN" TeX-arg-macro "\propkey" TeX-arg-macro)
     '("prop_del:Nn" TeX-arg-macro "\propkey")
     '("prop_del:NV" TeX-arg-macro TeX-arg-macro)
     '("prop_gdel:Nn" TeX-arg-macro "arg2")
     '("prop_gdel:NV" TeX-arg-macro TeX-arg-macro)
     '("prop_map_function:NN" TeX-arg-macro TeX-arg-macro)
     '("prop_map_function:cN" "arg1" TeX-arg-macro)
     '("prop_map_function:Nc" TeX-arg-macro "arg2")
     '("prop_map_function:cc" "arg1" "arg2")
     '("prop_map_inline:Nn" TeX-arg-macro "inline function")
     '("prop_map_inline:cn" "arg1" "arg2")
     '("prop_show:N" TeX-arg-macro)
     '("prop_show:c" "arg1")
     '("prop_display:N" TeX-arg-macro)
     '("prop_display:c" "arg1")
     '("prop_if_empty_p:N" TeX-arg-macro "true code" "false code")
     '("prop_if_empty_p:c" "arg1")
     '("prop_if_empty:NT" TeX-arg-macro "true code")
     '("prop_if_empty:NF" TeX-arg-macro "false code")
     '("prop_if_empty:NTF" TeX-arg-macro "true code" "false code")
     '("prop_if_empty:cT" "arg1" "arg2")
     '("prop_if_empty:cF" "arg1" "arg2")
     '("prop_if_empty:cTF" "arg1" "arg2" "arg3")
     '("prop_if_eq_p:NN" TeX-arg-macro TeX-arg-macro)
     '("prop_if_eq_p:cN" "arg1" TeX-arg-macro)
     '("prop_if_eq_p:Nc" TeX-arg-macro "arg2")
     '("prop_if_eq_p:cc" "arg1" "arg2")
     '("prop_if_eq:NNT" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_if_eq:NNF" TeX-arg-macro TeX-arg-macro "false code")
     '("prop_if_eq:NNTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("prop_if_eq:cNT" "arg1" TeX-arg-macro "arg3")
     '("prop_if_eq:cNF" "arg1" TeX-arg-macro "arg3")
     '("prop_if_eq:cNTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("prop_if_eq:NcT" TeX-arg-macro "arg2" "arg3")
     '("prop_if_eq:NcF" TeX-arg-macro "arg2" "arg3")
     '("prop_if_eq:NcTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("prop_if_eq:ccT" "arg1" "arg2" "arg3")
     '("prop_if_eq:ccF" "arg1" "arg2" "arg3")
     '("prop_if_eq:ccTF" "arg1" "arg2" "arg3" "arg4")
     '("prop_if_in:NnT" TeX-arg-macro "\propkey" "true code")
     '("prop_if_in:NnF" TeX-arg-macro "\propkey" "false code")
     '("prop_if_in:NnTF" TeX-arg-macro "\propkey" "true code" "false code")
     '("prop_if_in:NVT" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_if_in:NVF" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_if_in:NVTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("prop_if_in:NoT" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_if_in:NoF" TeX-arg-macro TeX-arg-macro "arg3")
     '("prop_if_in:NoTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("prop_if_in:cnT" "arg1" "arg2" "arg3")
     '("prop_if_in:cnF" "arg1" "arg2" "arg3")
     '("prop_if_in:cnTF" "arg1" "arg2" "arg3" "arg4")
     '("prop_if_in:ccT" "arg1" "arg2" "arg3")
     '("prop_if_in:ccF" "arg1" "arg2" "arg3")
     '("prop_if_in:ccTF" "arg1" "arg2" "arg3" "arg4")
     '("prop_split_aux:Nnn" TeX-arg-macro TeX-arg-macro TeX-arg-macro)))))
