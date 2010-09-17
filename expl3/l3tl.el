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
 "l3tl"
 (function
  (lambda ()
    (TeX-add-symbols
     '("tl_new:N" TeX-arg-macro)
     '("tl_new:c" "arg1")
     '("tl_new:Nn" TeX-arg-macro "initial token list")
     '("tl_new:cn" "arg1" "arg2")
     '("tl_new:Nx" TeX-arg-macro "arg2")
     '("tl_const:Nn" "token list")
     '("tl_use:N" TeX-arg-macro)
     '("tl_use:c" "arg1")
     '("tl_set:Nn" TeX-arg-macro "\tlist")
     '("tl_set:Nc" TeX-arg-macro "arg2")
     '("tl_set:NV" TeX-arg-macro TeX-arg-macro)
     '("tl_set:No" TeX-arg-macro TeX-arg-macro)
     '("tl_set:Nv" TeX-arg-macro "arg2")
     '("tl_set:Nf" TeX-arg-macro "arg2")
     '("tl_set:Nx" TeX-arg-macro "arg2")
     '("tl_set:cn" "arg1" "arg2")
     '("tl_set:co" "arg1" TeX-arg-macro)
     '("tl_set:cV" "arg1" TeX-arg-macro)
     '("tl_set:cx" "arg1" "arg2")
     '("tl_gset:Nn" TeX-arg-macro "arg2")
     '("tl_gset:Nc" TeX-arg-macro "arg2")
     '("tl_gset:No" TeX-arg-macro TeX-arg-macro)
     '("tl_gset:NV" TeX-arg-macro TeX-arg-macro)
     '("tl_gset:Nv" TeX-arg-macro "arg2")
     '("tl_gset:Nx" TeX-arg-macro "arg2")
     '("tl_gset:cn" "arg1" "arg2")
     '("tl_gset:cx" "arg1" "arg2")
     '("tl_clear:N" TeX-arg-macro)
     '("tl_clear:c" "arg1")
     '("tl_gclear:N" TeX-arg-macro)
     '("tl_gclear:c" "arg1")
     '("tl_clear_new:N" TeX-arg-macro)
     '("tl_clear_new:c" "arg1")
     '("tl_gclear_new:N" TeX-arg-macro)
     '("tl_gclear_new:c" "arg1")
     '("tl_put_left:Nn" TeX-arg-macro "\tlist")
     '("tl_put_left:NV" TeX-arg-macro TeX-arg-macro)
     '("tl_put_left:No" TeX-arg-macro TeX-arg-macro)
     '("tl_put_left:Nx" TeX-arg-macro "arg2")
     '("tl_put_left:cn" "arg1" "arg2")
     '("tl_put_left:cV" "arg1" TeX-arg-macro)
     '("tl_put_left:co" "arg1" TeX-arg-macro)
     '("tl_put_right:Nn" TeX-arg-macro "\tlist")
     '("tl_put_right:NV" TeX-arg-macro TeX-arg-macro)
     '("tl_put_right:No" TeX-arg-macro TeX-arg-macro)
     '("tl_put_right:Nx" TeX-arg-macro "arg2")
     '("tl_put_right:cn" "arg1" "arg2")
     '("tl_put_right:cV" "arg1" TeX-arg-macro)
     '("tl_put_right:co" "arg1" TeX-arg-macro)
     '("tl_gput_left:Nn" TeX-arg-macro "\tlist")
     '("tl_gput_left:No" TeX-arg-macro TeX-arg-macro)
     '("tl_gput_left:NV" TeX-arg-macro TeX-arg-macro)
     '("tl_gput_left:Nx" TeX-arg-macro "arg2")
     '("tl_gput_left:cn" "arg1" "arg2")
     '("tl_gput_left:co" "arg1" TeX-arg-macro)
     '("tl_gput_left:cV" "arg1" TeX-arg-macro)
     '("tl_gput_right:Nn" TeX-arg-macro "\tlist")
     '("tl_gput_right:No" TeX-arg-macro TeX-arg-macro)
     '("tl_gput_right:NV" TeX-arg-macro TeX-arg-macro)
     '("tl_gput_right:Nx" TeX-arg-macro "arg2")
     '("tl_gput_right:cn" "arg1" "arg2")
     '("tl_gput_right:co" "arg1" TeX-arg-macro)
     '("tl_gput_right:cV" "arg1" TeX-arg-macro)
     '("tl_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("tl_set_eq:Nc" TeX-arg-macro "arg2")
     '("tl_set_eq:cN" "arg1" TeX-arg-macro)
     '("tl_set_eq:cc" "arg1" "arg2")
     '("tl_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("tl_gset_eq:Nc" TeX-arg-macro "arg2")
     '("tl_gset_eq:cN" "arg1" TeX-arg-macro)
     '("tl_gset_eq:cc" "arg1" "arg2")
     '("tl_to_str:N" TeX-arg-macro)
     '("tl_to_str:c" "arg1")
     '("tl_to_str:n" "\tlist")
     '("tl_rescan:nn" "catcode setup" "\tlist")
     '("tl_set_rescan:Nnn" TeX-arg-macro "catcode setup" "\tlist")
     '("tl_set_rescan:Nnx" TeX-arg-macro "arg2" "arg3")
     '("tl_gset_rescan:Nnn" TeX-arg-macro "arg2" "arg3")
     '("tl_gset_rescan:Nnx" TeX-arg-macro "arg2" "arg3")
     '("tl_if_empty_p:N" TeX-arg-macro)
     '("tl_if_empty_p:c" "arg1")
     '("tl_if_empty:NT" TeX-arg-macro "true code")
     '("tl_if_empty:NF" TeX-arg-macro "false code")
     '("tl_if_empty:NTF" TeX-arg-macro "true code" "false code")
     '("tl_if_empty:cT" "arg1" "arg2")
     '("tl_if_empty:cF" "arg1" "arg2")
     '("tl_if_empty:cTF" "arg1" "arg2" "arg3")
     '("tl_if_eq_p:NN" TeX-arg-macro TeX-arg-macro)
     '("tl_if_eq_p:cN" "arg1" TeX-arg-macro)
     '("tl_if_eq_p:Nc" TeX-arg-macro "arg2")
     '("tl_if_eq_p:cc" "arg1" "arg2")
     '("tl_if_eq:NNT" TeX-arg-macro TeX-arg-macro "true code")
     '("tl_if_eq:NNF" TeX-arg-macro TeX-arg-macro "false code")
     '("tl_if_eq:NNTF" TeX-arg-macro TeX-arg-macro "true code" "false code")
     '("tl_if_eq:cNT" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:cNF" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:cNTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:NcT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:NcF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:NcTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_if_eq:ccT" "arg1" "arg2" "arg3")
     '("tl_if_eq:ccF" "arg1" "arg2" "arg3")
     '("tl_if_eq:ccTF" "arg1" "arg2" "arg3" "arg4")
     '("tl_if_eq:nnT" "tlist1" "tlist2" "true code")
     '("tl_if_eq:nnF" "tlist1" "tlist2" "false code")
     '("tl_if_eq:nnTF" "tlist1" "tlist2" "true code" "false code")
     '("tl_if_eq:nVT" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:nVF" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:nVTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:noT" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:noF" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:noTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:VnT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:VnF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:VnTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_if_eq:onT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:onF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:onTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_if_eq:VVT" TeX-arg-macro TeX-arg-macro "arg3")
     '("tl_if_eq:VVF" TeX-arg-macro TeX-arg-macro "arg3")
     '("tl_if_eq:VVTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:ooT" TeX-arg-macro TeX-arg-macro "arg3")
     '("tl_if_eq:ooF" TeX-arg-macro TeX-arg-macro "arg3")
     '("tl_if_eq:ooTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:xxT" "arg1" "arg2" "arg3")
     '("tl_if_eq:xxF" "arg1" "arg2" "arg3")
     '("tl_if_eq:xxTF" "arg1" "arg2" "arg3" "arg4")
     '("tl_if_eq:xnT" "arg1" "arg2" "arg3")
     '("tl_if_eq:xnF" "arg1" "arg2" "arg3")
     '("tl_if_eq:xnTF" "arg1" "arg2" "arg3" "arg4")
     '("tl_if_eq:nxT" "arg1" "arg2" "arg3")
     '("tl_if_eq:nxF" "arg1" "arg2" "arg3")
     '("tl_if_eq:nxTF" "arg1" "arg2" "arg3" "arg4")
     '("tl_if_eq:xVT" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:xVF" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:xVTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:xoT" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:xoF" "arg1" TeX-arg-macro "arg3")
     '("tl_if_eq:xoTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("tl_if_eq:VxT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:VxF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:VxTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_if_eq:oxT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:oxF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_eq:oxTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_if_eq_p:nn" "tlist1" "tlist2")
     '("tl_if_eq_p:nV" "arg1" TeX-arg-macro)
     '("tl_if_eq_p:no" "arg1" TeX-arg-macro)
     '("tl_if_eq_p:Vn" TeX-arg-macro "arg2")
     '("tl_if_eq_p:on" TeX-arg-macro "arg2")
     '("tl_if_eq_p:VV" TeX-arg-macro TeX-arg-macro)
     '("tl_if_eq_p:oo" TeX-arg-macro TeX-arg-macro)
     '("tl_if_eq_p:xx" "arg1" "arg2")
     '("tl_if_eq_p:xn" "arg1" "arg2")
     '("tl_if_eq_p:nx" "arg1" "arg2")
     '("tl_if_eq_p:xV" "arg1" TeX-arg-macro)
     '("tl_if_eq_p:xo" "arg1" TeX-arg-macro)
     '("tl_if_eq_p:Vx" TeX-arg-macro "arg2")
     '("tl_if_eq_p:ox" TeX-arg-macro "arg2")
     '("tl_if_empty_p:n" "arg1")
     '("tl_if_empty_p:V" TeX-arg-macro)
     '("tl_if_empty_p:o" TeX-arg-macro)
     '("tl_if_empty:nT" "\tlist" "true code")
     '("tl_if_empty:nF" "\tlist" "false code")
     '("tl_if_empty:nTF" "\tlist" "true code" "false code")
     '("tl_if_empty:VT" TeX-arg-macro "arg2")
     '("tl_if_empty:VF" TeX-arg-macro "arg2")
     '("tl_if_empty:VTF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_empty:oT" TeX-arg-macro "arg2")
     '("tl_if_empty:oF" TeX-arg-macro "arg2")
     '("tl_if_empty:oTF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_blank_p:n" "arg1")
     '("tl_if_blank:nT" "\tlist" "true code")
     '("tl_if_blank:nF" "\tlist" "false code")
     '("tl_if_blank:nTF" "\tlist" "true code" "false code")
     '("tl_if_blank_p:V" TeX-arg-macro)
     '("tl_if_blank_p:o" TeX-arg-macro)
     '("tl_if_blank:VT" TeX-arg-macro "arg2")
     '("tl_if_blank:VF" TeX-arg-macro "arg2")
     '("tl_if_blank:VTF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_blank:oT" TeX-arg-macro "arg2")
     '("tl_if_blank:oF" TeX-arg-macro "arg2")
     '("tl_if_blank:oTF" TeX-arg-macro "arg2" "arg3")
     '("tl_to_lowercase:n" "\tlist")
     '("tl_to_uppercase:n" "arg1")
     "tl_map_break:"
     '("tl_if_in:NnT" TeX-arg-macro "item" "true code")
     '("tl_if_in:NnF" TeX-arg-macro "item" "false code")
     '("tl_if_in:NnTF" TeX-arg-macro "item" "true code" "false code")
     '("tl_if_in:cnT" "arg1" "arg2" "arg3")
     '("tl_if_in:cnF" "arg1" "arg2" "arg3")
     '("tl_if_in:cnTF" "arg1" "arg2" "arg3" "arg4")
     '("tl_if_in:nnT" "arg1" "arg2" "arg3")
     '("tl_if_in:nnF" "arg1" "arg2" "arg3")
     '("tl_if_in:nnTF" "arg1" "arg2" "arg3" "arg4")
     '("tl_if_in:VnT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_in:VnF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_in:VnTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_if_in:onT" TeX-arg-macro "arg2" "arg3")
     '("tl_if_in:onF" TeX-arg-macro "arg2" "arg3")
     '("tl_if_in:onTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("tl_replace_in:Nnn" TeX-arg-macro "item1" "item2")
     '("tl_replace_in:cnn" "arg1" "arg2" "arg3")
     '("tl_greplace_in:Nnn" TeX-arg-macro "arg2" "arg3")
     '("tl_greplace_in:cnn" "arg1" "arg2" "arg3")
     '("tl_replace_all_in:Nnn" TeX-arg-macro "item1" "item2")
     '("tl_replace_all_in:cnn" "arg1" "arg2" "arg3")
     '("tl_greplace_all_in:Nnn" TeX-arg-macro "arg2" "arg3")
     '("tl_greplace_all_in:cnn" "arg1" "arg2" "arg3")
     '("tl_remove_in:Nn" TeX-arg-macro "item")
     '("tl_remove_in:cn" "arg1" "arg2")
     '("tl_gremove_in:Nn" TeX-arg-macro "arg2")
     '("tl_gremove_in:cn" "arg1" "arg2")
     '("tl_remove_all_in:Nn" TeX-arg-macro "item")
     '("tl_remove_all_in:cn" "arg1" "arg2")
     '("tl_gremove_all_in:Nn" TeX-arg-macro "arg2")
     '("tl_gremove_all_in:cn" "arg1" "arg2")
     "c_job_name_tl"
     "c_empty_tl"
     "c_space_tl"
     "l_tmpa_tl"
     "l_tmpb_tl"
     "g_tmpa_tl"
     "g_tmpb_tl"
     "l_tl_replace_tl"
     "l_kernel_testa_tl"
     "l_kernel_testb_tl"
     "l_kernel_tmpa_tl"
     "l_kernel_tmpb_tl"
     "g_tl_inline_level_int"))))
