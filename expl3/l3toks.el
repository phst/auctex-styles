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
 "l3toks"
 (function
  (lambda ()
    (TeX-add-symbols
     '("toks_new:N" TeX-arg-macro)
     '("toks_new:c" "arg1")
     '("toks_use:N" TeX-arg-macro)
     '("toks_use:c" "arg1")
     '("toks_set:Nn" TeX-arg-macro "token list")
     '("toks_set:NV" TeX-arg-macro TeX-arg-macro)
     '("toks_set:Nv" TeX-arg-macro "arg2")
     '("toks_set:No" TeX-arg-macro TeX-arg-macro)
     '("toks_set:Nx" TeX-arg-macro "arg2")
     '("toks_set:Nf" TeX-arg-macro "arg2")
     '("toks_set:cn" "arg1" "arg2")
     '("toks_set:co" "arg1" TeX-arg-macro)
     '("toks_set:cV" "arg1" TeX-arg-macro)
     '("toks_set:cv" "arg1" "arg2")
     '("toks_set:cx" "arg1" "arg2")
     '("toks_set:cf" "arg1" "arg2")
     '("toks_gset:Nn" TeX-arg-macro "token list")
     '("toks_gset:NV" TeX-arg-macro TeX-arg-macro)
     '("toks_gset:No" TeX-arg-macro TeX-arg-macro)
     '("toks_gset:Nx" TeX-arg-macro "arg2")
     '("toks_gset:cn" "arg1" "arg2")
     '("toks_gset:cV" "arg1" TeX-arg-macro)
     '("toks_gset:co" "arg1" TeX-arg-macro)
     '("toks_gset:cx" "arg1" "arg2")
     '("toks_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("toks_set_eq:cN" "arg1" TeX-arg-macro)
     '("toks_set_eq:Nc" TeX-arg-macro "arg2")
     '("toks_set_eq:cc" "arg1" "arg2")
     '("toks_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("toks_gset_eq:cN" "arg1" TeX-arg-macro)
     '("toks_gset_eq:Nc" TeX-arg-macro "arg2")
     '("toks_gset_eq:cc" "arg1" "arg2")
     '("toks_clear:N" TeX-arg-macro)
     '("toks_clear:c" "arg1")
     '("toks_gclear:N" TeX-arg-macro)
     '("toks_gclear:c" "arg1")
     '("toks_use_clear:N" TeX-arg-macro)
     '("toks_use_clear:c" "arg1")
     '("toks_use_gclear:N" TeX-arg-macro)
     '("toks_use_gclear:c" "arg1")
     '("toks_show:N" TeX-arg-macro)
     '("toks_show:c" "arg1")
     '("toks_put_left:Nn" TeX-arg-macro "token list")
     '("toks_put_left:NV" TeX-arg-macro TeX-arg-macro)
     '("toks_put_left:No" TeX-arg-macro TeX-arg-macro)
     '("toks_put_left:Nx" TeX-arg-macro "arg2")
     '("toks_put_left:cn" "arg1" "arg2")
     '("toks_put_left:cV" "arg1" TeX-arg-macro)
     '("toks_put_left:co" "arg1" TeX-arg-macro)
     '("toks_gput_left:Nn" TeX-arg-macro "token list")
     '("toks_gput_left:NV" TeX-arg-macro TeX-arg-macro)
     '("toks_gput_left:No" TeX-arg-macro TeX-arg-macro)
     '("toks_gput_left:Nx" TeX-arg-macro "arg2")
     '("toks_gput_left:cn" "arg1" "arg2")
     '("toks_gput_left:cV" "arg1" TeX-arg-macro)
     '("toks_gput_left:co" "arg1" TeX-arg-macro)
     '("toks_put_right:Nn" TeX-arg-macro "token list")
     '("toks_put_right:NV" TeX-arg-macro TeX-arg-macro)
     '("toks_put_right:No" TeX-arg-macro TeX-arg-macro)
     '("toks_put_right:Nx" TeX-arg-macro "arg2")
     '("toks_put_right:cV" "arg1" TeX-arg-macro)
     '("toks_put_right:cn" "arg1" "arg2")
     '("toks_put_right:co" "arg1" TeX-arg-macro)
     '("toks_put_right:Nf" TeX-arg-macro "token list")
     '("toks_gput_right:Nn" TeX-arg-macro "token list")
     '("toks_gput_right:NV" TeX-arg-macro TeX-arg-macro)
     '("toks_gput_right:No" TeX-arg-macro TeX-arg-macro)
     '("toks_gput_right:Nx" TeX-arg-macro "arg2")
     '("toks_gput_right:cn" "arg1" "arg2")
     '("toks_gput_right:cV" "arg1" TeX-arg-macro)
     '("toks_gput_right:co" "arg1" TeX-arg-macro)
     '("toks_if_empty_p:N" TeX-arg-macro)
     '("toks_if_empty:NT" TeX-arg-macro "true code")
     '("toks_if_empty:NF" TeX-arg-macro "false code")
     '("toks_if_empty:NTF" TeX-arg-macro "true code" "false code")
     '("toks_if_empty_p:c" "arg1")
     '("toks_if_empty:cT" "arg1" "arg2")
     '("toks_if_empty:cF" "arg1" "arg2")
     '("toks_if_empty:cTF" "arg1" "arg2" "arg3")
     '("toks_if_eq:NNT" TeX-arg-macro TeX-arg-macro "true code")
     '("toks_if_eq:NNF" TeX-arg-macro TeX-arg-macro "false code")
     '("toks_if_eq:NNTF" TeX-arg-macro TeX-arg-macro "true code" "false code")
     '("toks_if_eq:NcT" TeX-arg-macro "arg2" "arg3")
     '("toks_if_eq:NcF" TeX-arg-macro "arg2" "arg3")
     '("toks_if_eq:NcTF" TeX-arg-macro "arg2" "arg3" "arg4")
     '("toks_if_eq:cNT" "arg1" TeX-arg-macro "arg3")
     '("toks_if_eq:cNF" "arg1" TeX-arg-macro "arg3")
     '("toks_if_eq:cNTF" "arg1" TeX-arg-macro "arg3" "arg4")
     '("toks_if_eq:ccT" "arg1" "arg2" "arg3")
     '("toks_if_eq:ccF" "arg1" "arg2" "arg3")
     '("toks_if_eq:ccTF" "arg1" "arg2" "arg3" "arg4")
     '("toks_if_eq_p:NN" TeX-arg-macro TeX-arg-macro)
     '("toks_if_eq_p:cN" "arg1" TeX-arg-macro)
     '("toks_if_eq_p:Nc" TeX-arg-macro "arg2")
     '("toks_if_eq_p:cc" "arg1" "arg2")
     "c_empty_toks"
     "l_tmpa_toks"
     "l_tmpb_toks"
     "l_tmpc_toks"
     "g_tmpa_toks"
     "g_tmpb_toks"
     "g_tmpc_toks"
     "l_tl_replace_toks"))))
