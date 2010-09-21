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
 "l3seq-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("seq_new:N" TeX-arg-macro)
     '("seq_new:c" "arg1")
     '("seq_clear:N" TeX-arg-macro)
     '("seq_clear:c" "arg1")
     '("seq_gclear:N" TeX-arg-macro)
     '("seq_gclear:c" "arg1")
     '("seq_clear_new:N" TeX-arg-macro)
     '("seq_clear_new:c" "arg1")
     '("seq_gclear_new:N" TeX-arg-macro)
     '("seq_gclear_new:c" "arg1")
     '("seq_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_set_eq:cN" "arg1" TeX-arg-macro)
     '("seq_set_eq:Nc" TeX-arg-macro "arg2")
     '("seq_set_eq:cc" "arg1" "arg2")
     '("seq_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_gset_eq:cN" "arg1" TeX-arg-macro)
     '("seq_gset_eq:Nc" TeX-arg-macro "arg2")
     '("seq_gset_eq:cc" "arg1" "arg2")
     '("seq_put_left:Nn" TeX-arg-macro TeX-arg-macro)
     '("seq_put_left:NV" TeX-arg-macro TeX-arg-macro)
     '("seq_put_left:No" TeX-arg-macro TeX-arg-macro)
     '("seq_put_left:Nx" TeX-arg-macro "arg2")
     '("seq_put_left:cn" "arg1" "arg2")
     '("seq_put_left:cV" "arg1" TeX-arg-macro)
     '("seq_put_left:co" "arg1" TeX-arg-macro)
     '("seq_put_right:Nn" TeX-arg-macro TeX-arg-macro)
     '("seq_put_right:NV" TeX-arg-macro TeX-arg-macro)
     '("seq_put_right:No" TeX-arg-macro TeX-arg-macro)
     '("seq_put_right:Nx" TeX-arg-macro "arg2")
     '("seq_put_right:cn" "arg1" "arg2")
     '("seq_put_right:cV" "arg1" TeX-arg-macro)
     '("seq_put_right:co" "arg1" TeX-arg-macro)
     '("seq_gput_left:Nn" TeX-arg-macro TeX-arg-macro)
     '("seq_gput_left:NV" TeX-arg-macro TeX-arg-macro)
     '("seq_gput_left:No" TeX-arg-macro TeX-arg-macro)
     '("seq_gput_left:Nx" TeX-arg-macro "arg2")
     '("seq_gput_left:cn" "arg1" "arg2")
     '("seq_gput_left:cV" "arg1" TeX-arg-macro)
     '("seq_gput_left:co" "arg1" TeX-arg-macro)
     '("seq_gput_right:Nn" TeX-arg-macro TeX-arg-macro)
     '("seq_gput_right:NV" TeX-arg-macro TeX-arg-macro)
     '("seq_gput_right:No" TeX-arg-macro TeX-arg-macro)
     '("seq_gput_right:Nx" TeX-arg-macro "arg2")
     '("seq_gput_right:cn" "arg1" "arg2")
     '("seq_gput_right:cV" "arg1" TeX-arg-macro)
     '("seq_gput_right:co" "arg1" TeX-arg-macro)
     '("seq_get:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_get:cN" "arg1" TeX-arg-macro)
     '("seq_map_variable:NNn" TeX-arg-macro TeX-arg-macro "code using tl var.")
     '("seq_map_variable:cNn" "arg1" TeX-arg-macro "arg3")
     '("seq_map_function:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_map_function:cN" "arg1" TeX-arg-macro)
     '("seq_map_inline:Nn" TeX-arg-macro "inline function")
     '("seq_map_inline:cn" "arg1" "arg2")
     '("seq_show:N" TeX-arg-macro)
     '("seq_show:c" "arg1")
     '("seq_display:N" TeX-arg-macro)
     '("seq_display:c" "arg1")
     '("seq_remove_duplicates:N" TeX-arg-macro)
     '("seq_gremove_duplicates:N" TeX-arg-macro)
     '("seq_if_empty_p:N" TeX-arg-macro)
     '("seq_if_empty_p:c" "arg1")
     '("seq_if_empty:NT" TeX-arg-macro "true code")
     '("seq_if_empty:NF" TeX-arg-macro "false code")
     '("seq_if_empty:NTF" TeX-arg-macro "true code" "false code")
     '("seq_if_empty:cT" "arg1" "arg2")
     '("seq_if_empty:cF" "arg1" "arg2")
     '("seq_if_empty:cTF" "arg1" "arg2" "arg3")
     '("seq_if_in:NnT" TeX-arg-macro "item" "true code")
     '("seq_if_in:NnF" TeX-arg-macro "item" "false code")
     '("seq_if_in:NnTF" TeX-arg-macro "item" "true code" "false code")
     '("seq_if_in:NVT" TeX-arg-macro TeX-arg-macro "arg3")
     '("seq_if_in:NVF" TeX-arg-macro TeX-arg-macro "arg3")
     '("seq_if_in:NVTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("seq_if_in:cnT" "arg1" "arg2" "arg3")
     '("seq_if_in:cnF" "arg1" "arg2" "arg3")
     '("seq_if_in:cnTF" "arg1" "arg2" "arg3" "arg4")
     '("seq_if_in:cVT" "arg1" TeX-arg-macro "arg3")
     '("seq_if_in:cVF" "arg1" TeX-arg-macro "arg3")
     '("seq_if_in:cVTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("seq_if_in:coT" "arg1" TeX-arg-macro "arg3")
     '("seq_if_in:coF" "arg1" TeX-arg-macro "arg3")
     '("seq_if_in:coTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("seq_if_in:cxT" "arg1" "arg2" "arg3")
     '("seq_if_in:cxF" "arg1" "arg2" "arg3")
     '("seq_if_in:cxTF" "arg1" "arg2" "arg3" "arg4")
     '("seq_if_empty_err:N" TeX-arg-macro)
     '("seq_pop_aux:nnNN" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("seq_push:Nn" TeX-arg-macro "token list")
     '("seq_push:NV" TeX-arg-macro TeX-arg-macro)
     '("seq_push:No" TeX-arg-macro TeX-arg-macro)
     '("seq_push:cn" "arg1" "arg2")
     '("seq_gpush:Nn" TeX-arg-macro "arg2")
     '("seq_gpush:NV" TeX-arg-macro TeX-arg-macro)
     '("seq_gpush:No" TeX-arg-macro TeX-arg-macro)
     '("seq_gpush:Nv" TeX-arg-macro "arg2")
     '("seq_gpush:cn" "arg1" "arg2")
     '("seq_pop:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_pop:cN" "arg1" TeX-arg-macro)
     '("seq_gpop:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_gpop:cN" "arg1" TeX-arg-macro)
     '("seq_top:NN" TeX-arg-macro TeX-arg-macro)
     '("seq_top:cN" "arg1" TeX-arg-macro)))))
