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
 "l3clist"
 (function
  (lambda ()
    (TeX-add-symbols
     '("clist_new:N" TeX-arg-macro)
     '("clist_new:c" "arg1")
     '("clist_clear:N" TeX-arg-macro)
     '("clist_clear:c" "arg1")
     '("clist_gclear:N" TeX-arg-macro)
     '("clist_gclear:c" "arg1")
     '("clist_clear_new:N" TeX-arg-macro)
     '("clist_clear_new:c" "arg1")
     '("clist_gclear_new:N" TeX-arg-macro)
     '("clist_gclear_new:c" "arg1")
     '("clist_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_set_eq:cN" "arg1" TeX-arg-macro)
     '("clist_set_eq:Nc" TeX-arg-macro "arg2")
     '("clist_set_eq:cc" "arg1" "arg2")
     '("clist_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_gset_eq:cN" "arg1" TeX-arg-macro)
     '("clist_gset_eq:Nc" TeX-arg-macro "arg2")
     '("clist_gset_eq:cc" "arg1" "arg2")
     '("clist_put_left:Nn" TeX-arg-macro TeX-arg-macro)
     '("clist_put_left:NV" TeX-arg-macro TeX-arg-macro)
     '("clist_put_left:No" TeX-arg-macro TeX-arg-macro)
     '("clist_put_left:Nx" TeX-arg-macro "arg2")
     '("clist_put_left:cn" "arg1" "arg2")
     '("clist_put_left:co" "arg1" TeX-arg-macro)
     '("clist_put_left:cV" "arg1" TeX-arg-macro)
     '("clist_put_right:Nn" TeX-arg-macro TeX-arg-macro)
     '("clist_put_right:No" TeX-arg-macro TeX-arg-macro)
     '("clist_put_right:NV" TeX-arg-macro TeX-arg-macro)
     '("clist_put_right:Nx" TeX-arg-macro "arg2")
     '("clist_put_right:cn" "arg1" "arg2")
     '("clist_put_right:co" "arg1" TeX-arg-macro)
     '("clist_put_right:cV" "arg1" TeX-arg-macro)
     '("clist_gput_left:Nn" TeX-arg-macro TeX-arg-macro)
     '("clist_gput_left:NV" TeX-arg-macro TeX-arg-macro)
     '("clist_gput_left:No" TeX-arg-macro TeX-arg-macro)
     '("clist_gput_left:Nx" TeX-arg-macro "arg2")
     '("clist_gput_left:cn" "arg1" "arg2")
     '("clist_gput_left:cV" "arg1" TeX-arg-macro)
     '("clist_gput_left:co" "arg1" TeX-arg-macro)
     '("clist_gput_right:Nn" TeX-arg-macro TeX-arg-macro)
     '("clist_gput_right:NV" TeX-arg-macro TeX-arg-macro)
     '("clist_gput_right:No" TeX-arg-macro TeX-arg-macro)
     '("clist_gput_right:Nx" TeX-arg-macro "arg2")
     '("clist_gput_right:cn" "arg1" "arg2")
     '("clist_gput_right:cV" "arg1" TeX-arg-macro)
     '("clist_gput_right:co" "arg1" TeX-arg-macro)
     '("clist_use:N" TeX-arg-macro)
     '("clist_use:c" "arg1")
     '("clist_show:N" TeX-arg-macro)
     '("clist_show:c" "arg1")
     '("clist_display:N" TeX-arg-macro)
     '("clist_display:c" "arg1")
     '("clist_get:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_get:cN" "arg1" TeX-arg-macro)
     '("clist_map_function:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_map_function:cN" "arg1" TeX-arg-macro)
     '("clist_map_function:nN" "arg1" TeX-arg-macro)
     '("clist_map_inline:Nn" TeX-arg-macro "inline function")
     '("clist_map_inline:cn" "arg1" "arg2")
     '("clist_map_inline:nn" "arg1" "arg2")
     '("clist_map_variable:NNn" TeX-arg-macro TeX-arg-macro "action")
     '("clist_map_variable:cNn" "arg1" TeX-arg-macro "arg3")
     '("clist_map_variable:nNn" "arg1" TeX-arg-macro "arg3")
     "clist_map_break:"
     '("clist_if_empty_p:N" TeX-arg-macro)
     '("clist_if_empty_p:c" "arg1")
     '("clist_if_empty:NT" TeX-arg-macro "true code")
     '("clist_if_empty:NF" TeX-arg-macro "false code")
     '("clist_if_empty:NTF" TeX-arg-macro "true code" "false code")
     '("clist_if_empty:cT" "arg1" "arg2")
     '("clist_if_empty:cF" "arg1" "arg2")
     '("clist_if_empty:cTF" "arg1" "arg2" "arg3")
     '("clist_if_eq_p:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_if_eq_p:cN" "arg1" TeX-arg-macro)
     '("clist_if_eq_p:Nc" TeX-arg-macro "arg2")
     '("clist_if_eq_p:cc" "arg1" "arg2")
     '("clist_if_eq:NNT" TeX-arg-macro TeX-arg-macro "true code")
     '("clist_if_eq:NNF" TeX-arg-macro TeX-arg-macro "false code")
     '("clist_if_eq:NNTF" TeX-arg-macro TeX-arg-macro "true code" "false code")
     '("clist_if_eq:cNT" "arg1" TeX-arg-macro "arg3")
     '("clist_if_eq:cNF" "arg1" TeX-arg-macro "arg3")
     '("clist_if_eq:cNTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("clist_if_eq:NcT" TeX-arg-macro "arg2" "arg3")
     '("clist_if_eq:NcF" TeX-arg-macro "arg2" "arg3")
     '("clist_if_eq:NcTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("clist_if_eq:ccT" "arg1" "arg2" "arg3")
     '("clist_if_eq:ccF" "arg1" "arg2" "arg3")
     '("clist_if_eq:ccTF" "arg1" "arg2" "arg3" "arg4")
     '("clist_if_in:NnT" TeX-arg-macro "item" "true code")
     '("clist_if_in:NnF" TeX-arg-macro "item" "false code")
     '("clist_if_in:NnTF" TeX-arg-macro "item" "true code" "false code")
     '("clist_if_in:NVT" TeX-arg-macro TeX-arg-macro "arg3")
     '("clist_if_in:NVF" TeX-arg-macro TeX-arg-macro "arg3")
     '("clist_if_in:NVTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("clist_if_in:NoT" TeX-arg-macro TeX-arg-macro "arg3")
     '("clist_if_in:NoF" TeX-arg-macro TeX-arg-macro "arg3")
     '("clist_if_in:NoTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("clist_if_in:cnT" "arg1" "arg2" "arg3")
     '("clist_if_in:cnF" "arg1" "arg2" "arg3")
     '("clist_if_in:cnTF" "arg1" "arg2" "arg3" "arg4")
     '("clist_if_in:cVT" "arg1" TeX-arg-macro "arg3")
     '("clist_if_in:cVF" "arg1" TeX-arg-macro "arg3")
     '("clist_if_in:cVTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("clist_if_in:coT" "arg1" TeX-arg-macro "arg3")
     '("clist_if_in:coF" "arg1" TeX-arg-macro "arg3")
     '("clist_if_in:coTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("clist_concat:NNN" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("clist_concat:ccc" "arg1" "arg2" "arg3")
     '("clist_gconcat:NNN" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("clist_gconcat:ccc" "arg1" "arg2" "arg3")
     '("clist_remove_duplicates:N" TeX-arg-macro)
     '("clist_gremove_duplicates:N" TeX-arg-macro)
     '("clist_remove_element:Nn" TeX-arg-macro "arg2")
     '("clist_gremove_element:Nn" TeX-arg-macro TeX-arg-macro)
     '("clist_push:Nn" TeX-arg-macro "token list")
     '("clist_push:NV" TeX-arg-macro TeX-arg-macro)
     '("clist_push:No" TeX-arg-macro TeX-arg-macro)
     '("clist_push:cn" "arg1" "arg2")
     '("clist_gpush:Nn" TeX-arg-macro "arg2")
     '("clist_gpush:NV" TeX-arg-macro TeX-arg-macro)
     '("clist_gpush:No" TeX-arg-macro TeX-arg-macro)
     '("clist_gpush:cn" "arg1" "arg2")
     '("clist_pop:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_pop:cN" "arg1" TeX-arg-macro)
     '("clist_gpop:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_gpop:cN" "arg1" TeX-arg-macro)
     '("clist_top:NN" TeX-arg-macro TeX-arg-macro)
     '("clist_top:cN" "arg1" TeX-arg-macro)
     '("clist_if_empty_err:N" TeX-arg-macro)
     '("clist_pop_aux:nnNN" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)))))
