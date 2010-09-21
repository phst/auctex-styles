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
 "l3expan-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("cs_generate_internal_variant:n" "args")
     '("exp_args:No" TeX-arg-macro TeX-arg-macro)
     '("exp_args:Nc" TeX-arg-macro "arg2")
     '("exp_args:cc" "arg1" "arg2")
     '("exp_args:NV" TeX-arg-macro TeX-arg-macro)
     '("exp_args:Nv" TeX-arg-macro "arg2")
     '("exp_args:Nx" TeX-arg-macro "arg2")
     '("exp_args:Nf" TeX-arg-macro "arg2")
     '("exp_args:NNx" TeX-arg-macro TeX-arg-macro "arg3")
     '("exp_args:Nnx" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:Ncx" TeX-arg-macro "arg2" "arg3")
     '("exp_args:Nox" TeX-arg-macro TeX-arg-macro "arg3")
     '("exp_args:Nxo" TeX-arg-macro "arg2" TeX-arg-macro)
     '("exp_args:Nxx" TeX-arg-macro "arg2" "arg3")
     '("exp_args:NNo" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:NNc" TeX-arg-macro TeX-arg-macro "arg3")
     '("exp_args:NNv" TeX-arg-macro TeX-arg-macro "arg3")
     '("exp_args:NNV" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:NNf" TeX-arg-macro TeX-arg-macro "arg3")
     '("exp_args:Nno" TeX-arg-macro "arg2" TeX-arg-macro)
     '("exp_args:NnV" TeX-arg-macro "arg2" TeX-arg-macro)
     '("exp_args:Nnf" TeX-arg-macro "arg2" "arg3")
     '("exp_args:Noo" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:Noc" TeX-arg-macro TeX-arg-macro "arg3")
     '("exp_args:Nco" TeX-arg-macro "arg2" TeX-arg-macro)
     '("exp_args:Ncf" TeX-arg-macro "arg2" "arg3")
     '("exp_args:Ncc" TeX-arg-macro "arg2" "arg3")
     '("exp_args:Nff" TeX-arg-macro "arg2" "arg3")
     '("exp_args:Nfo" TeX-arg-macro "arg2" TeX-arg-macro)
     '("exp_args:NVV" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:NNnx" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("exp_args:NNox" TeX-arg-macro TeX-arg-macro TeX-arg-macro "arg4")
     '("exp_args:Nnnx" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:Nnox" TeX-arg-macro "arg2" TeX-arg-macro "arg4")
     '("exp_args:Noox" TeX-arg-macro TeX-arg-macro TeX-arg-macro "arg4")
     '("exp_args:Ncnx" TeX-arg-macro "arg2" "arg3" "arg4")
     '("exp_args:Nccx" TeX-arg-macro "arg2" "arg3" "arg4")
     '("exp_args:NNNo" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:NNNV" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:NNoo" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:NNno" TeX-arg-macro TeX-arg-macro "arg3" TeX-arg-macro)
     '("exp_args:Nnno" TeX-arg-macro "arg2" "arg3" TeX-arg-macro)
     '("exp_args:Nnnc" TeX-arg-macro "arg2" "arg3" "arg4")
     '("exp_args:Nooo" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_args:Nccc" TeX-arg-macro "arg2" "arg3" "arg4")
     '("exp_args:NcNc" TeX-arg-macro "arg2" TeX-arg-macro "arg4")
     '("exp_args:NcNo" TeX-arg-macro "arg2" TeX-arg-macro TeX-arg-macro)
     '("exp_args:Ncco" TeX-arg-macro "arg2" "arg3" TeX-arg-macro)
     '("exp_not:o" "token list")
     '("exp_not:f" "arg1")
     "exp_stop_f:"
     '("exp_last_unbraced:Nf" TeX-arg-macro "arg2")
     '("exp_last_unbraced:NV" TeX-arg-macro TeX-arg-macro)
     '("exp_last_unbraced:No" TeX-arg-macro TeX-arg-macro)
     '("exp_last_unbraced:Nv" TeX-arg-macro "arg2")
     '("exp_last_unbraced:NcV" TeX-arg-macro "arg2" TeX-arg-macro)
     '("exp_last_unbraced:NNV" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_last_unbraced:NNo" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_last_unbraced:NNNV" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_last_unbraced:NNNo" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("exp_after:wN" TeX-arg-macro TeX-arg-macro)
     '("exp_eval_register:N" TeX-arg-macro)
     '("exp_eval_register:c" "arg1")
     '("exp_eval_error_msg:w" TeX-arg-macro)
     "::n"
     "::N"
     "::c"
     "::o"
     "::f"
     "::x"
     "::v"
     "::V"
     ":::"
     "l_exp_tl"))))
