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
 "l3basics-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("if_meaning:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("if_predicate:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("if_bool:N" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("if_mode_horizontal:" TeX-arg-macro TeX-arg-macro)
     "if_mode_vertical:"
     "if_mode_math:"
     "if_mode_inner:"
     '("cs_if_eq_name_p:NN" TeX-arg-macro TeX-arg-macro)
     '("cs_if_do_not_use_p:N" TeX-arg-macro)
     '("chk_if_free_cs:N" TeX-arg-macro)
     '("chk_if_free_cs:c" "arg1")
     '("chk_if_exist_cs:N" TeX-arg-macro)
     '("chk_if_exist_cs:c" "arg1")
     '("str_if_eq_p:nn" "string1" "string2")
     '("str_if_eq_var_p:nf" "string1" "string2")
     '("cs:w" TeX-arg-macro)
     "cs_end:"
     '("use:n" "arg")
     '("use:nn" "arg1" "arg2")
     '("use:nnn" "arg1" "arg2" "arg3")
     '("use:nnnn" "arg1" "arg2" "arg3" "arg4")
     '("use:c" "cs")
     '("use:x" "expandable tokens")
     '("use_i:nn" "code1" "code2")
     '("use_ii:nn" "arg1" "arg2")
     '("use_i:nnn" "arg1" "arg2" "arg3")
     '("use_ii:nnn" "arg1" "arg2" "arg3")
     '("use_iii:nnn" "arg1" "arg2" "arg3")
     '("use_i:nnnn" "arg1" "arg2" "arg3" "arg4")
     '("use_ii:nnnn" "arg1" "arg2" "arg3" "arg4")
     '("use_iii:nnnn" "arg1" "arg2" "arg3" "arg4")
     '("use_iv:nnnn" "arg1" "arg2" "arg3" "arg4")
     '("use_i_ii:nnn" "arg1" "arg2" "arg3")
     '("use_none_delimit_by_q_nil:w" TeX-arg-macro)
     "use_none_delimit_by_q_stop:w"
     "use_none_delimit_by_q_recursion_stop:w"
     '("use_i_delimit_by_q_nil:nw" "arg" TeX-arg-macro)
     "use_i_delimit_by_q_stop:nw"
     "use_i_delimit_by_q_recursion_stop:nw"
     '("exp_after:wN" TeX-arg-macro TeX-arg-macro)
     '("msg_kernel_bug:x" "message")
     '("cs_new:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_new:Npx"
     "cs_new:cpn"
     "cs_new:cpx"
     '("cs_new_nopar:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_new_nopar:Npx"
     "cs_new_nopar:cpn"
     "cs_new_nopar:cpx"
     '("cs_new_protected:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_new_protected:Npx"
     "cs_new_protected:cpn"
     "cs_new_protected:cpx"
     '("cs_new_protected_nopar:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_new_protected_nopar:Npx"
     "cs_new_protected_nopar:cpn"
     "cs_new_protected_nopar:cpx"
     '("cs_new:Nn" TeX-arg-macro "code")
     '("cs_new:Nx" TeX-arg-macro "arg2")
     '("cs_new:cn" "arg1" "arg2")
     '("cs_new:cx" "arg1" "arg2")
     '("cs_new_nopar:Nn" TeX-arg-macro "code")
     '("cs_new_nopar:Nx" TeX-arg-macro "arg2")
     '("cs_new_nopar:cn" "arg1" "arg2")
     '("cs_new_nopar:cx" "arg1" "arg2")
     '("cs_new_protected:Nn" TeX-arg-macro "code")
     '("cs_new_protected:Nx" TeX-arg-macro "arg2")
     '("cs_new_protected:cn" "arg1" "arg2")
     '("cs_new_protected:cx" "arg1" "arg2")
     '("cs_new_protected_nopar:Nn" TeX-arg-macro "code")
     '("cs_new_protected_nopar:Nx" TeX-arg-macro "arg2")
     '("cs_new_protected_nopar:cn" "arg1" "arg2")
     '("cs_new_protected_nopar:cx" "arg1" "arg2")
     '("cs_set:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_set:Npx"
     "cs_set:cpn"
     "cs_set:cpx"
     '("cs_gset:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_gset:Npx"
     "cs_gset:cpn"
     "cs_gset:cpx"
     '("cs_set_nopar:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_set_nopar:Npx"
     "cs_set_nopar:cpn"
     "cs_set_nopar:cpx"
     '("cs_gset_nopar:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_gset_nopar:Npx"
     "cs_gset_nopar:cpn"
     "cs_gset_nopar:cpx"
     '("cs_set_protected:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_set_protected:Npx"
     "cs_set_protected:cpn"
     "cs_set_protected:cpx"
     '("cs_gset_protected:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_gset_protected:Npx"
     "cs_gset_protected:cpn"
     "cs_gset_protected:cpx"
     '("cs_set_protected_nopar:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_set_protected_nopar:Npx"
     "cs_set_protected_nopar:cpn"
     "cs_set_protected_nopar:cpx"
     '("cs_gset_protected_nopar:Npn" TeX-arg-macro TeX-arg-macro "code")
     "cs_gset_protected_nopar:Npx"
     "cs_gset_protected_nopar:cpn"
     "cs_gset_protected_nopar:cpx"
     '("cs_set:Nn" TeX-arg-macro "code")
     '("cs_set:Nx" TeX-arg-macro "arg2")
     '("cs_set:cn" "arg1" "arg2")
     '("cs_set:cx" "arg1" "arg2")
     '("cs_gset:Nn" TeX-arg-macro "code")
     '("cs_gset:Nx" TeX-arg-macro "arg2")
     '("cs_gset:cn" "arg1" "arg2")
     '("cs_gset:cx" "arg1" "arg2")
     '("cs_set_nopar:Nn" TeX-arg-macro "code")
     '("cs_set_nopar:Nx" TeX-arg-macro "arg2")
     '("cs_set_nopar:cn" "arg1" "arg2")
     '("cs_set_nopar:cx" "arg1" "arg2")
     '("cs_gset_nopar:Nn" TeX-arg-macro "code")
     '("cs_gset_nopar:Nx" TeX-arg-macro "arg2")
     '("cs_gset_nopar:cn" "arg1" "arg2")
     '("cs_gset_nopar:cx" "arg1" "arg2")
     '("cs_set_protected:Nn" TeX-arg-macro "code")
     '("cs_set_protected:cn" "arg1" "arg2")
     '("cs_set_protected:Nx" TeX-arg-macro "arg2")
     '("cs_set_protected:cx" "arg1" "arg2")
     '("cs_gset_protected:Nn" TeX-arg-macro "code")
     '("cs_gset_protected:cn" "arg1" "arg2")
     '("cs_gset_protected:Nx" TeX-arg-macro "arg2")
     '("cs_gset_protected:cx" "arg1" "arg2")
     '("cs_set_protected_nopar:Nn" TeX-arg-macro "code")
     '("cs_set_protected_nopar:cn" "arg1" "arg2")
     '("cs_set_protected_nopar:Nx" TeX-arg-macro "arg2")
     '("cs_set_protected_nopar:cx" "arg1" "arg2")
     '("cs_gset_protected_nopar:Nn" TeX-arg-macro "code")
     '("cs_gset_protected_nopar:cn" "arg1" "arg2")
     '("cs_gset_protected_nopar:Nx" TeX-arg-macro "arg2")
     '("cs_gset_protected_nopar:cx" "arg1" "arg2")
     '("cs_undefine:N" TeX-arg-macro)
     '("cs_undefine:c" "arg1")
     '("cs_gundefine:N" TeX-arg-macro)
     '("cs_gundefine:c" "arg1")
     '("cs_new_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("cs_new_eq:cN" "arg1" TeX-arg-macro)
     '("cs_new_eq:Nc" TeX-arg-macro "arg2")
     '("cs_new_eq:cc" "arg1" "arg2")
     '("cs_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("cs_set_eq:cN" TeX-arg-macro TeX-arg-macro)
     '("cs_set_eq:Nc" TeX-arg-macro "arg2")
     '("cs_set_eq:cc" "arg1" "arg2")
     '("cs_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("cs_gset_eq:cN" "arg1" TeX-arg-macro)
     '("cs_gset_eq:Nc" TeX-arg-macro "arg2")
     '("cs_gset_eq:cc" "arg1" "arg2")
     '("cs_to_str:N" TeX-arg-macro)
     '("token_to_str:N" TeX-arg-macro)
     '("token_to_str:c" "arg1")
     '("token_to_meaning:N" TeX-arg-macro)
     '("cs_get_function_name:N" TeX-arg-macro TeX-arg-macro)
     '("cs_get_function_signature:N" TeX-arg-macro)
     '("cs_split_function:NN" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("cs_get_arg_count_from_signature:N" TeX-arg-macro TeX-arg-macro)
     "scan_stop:"
     '("group_begin:" TeX-arg-macro)
     "group_end:"
     '("group_execute_after:N" TeX-arg-macro)
     '("xetex_if_engine:T" "true code")
     '("xetex_if_engine:F" "false code")
     '("xetex_if_engine:TF" "true code" "false code")
     '("luatex_if_engine:T" "true code")
     '("luatex_if_engine:F" "false code")
     '("luatex_if_engine:TF" "true code" "false code")
     "c_true_bool"
     "c_false_bool"
     "c_minus_one"
     "c_zero"
     "c_sixteen"
     "c_xetex_is_engine_bool"
     "c_luatex_is_engine_bool"))))
