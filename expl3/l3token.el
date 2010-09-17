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
 "l3token"
 (function
  (lambda ()
    (TeX-add-symbols
     '("token_new:Nn" TeX-arg-macro "token 2")
     '("token_if_group_begin_p:N" TeX-arg-macro)
     '("token_if_group_begin:NT" TeX-arg-macro "true")
     '("token_if_group_begin:NF" TeX-arg-macro "false")
     '("token_if_group_begin:NTF" TeX-arg-macro "true" "false")
     '("token_if_group_end_p:N" TeX-arg-macro)
     '("token_if_group_end:NT" TeX-arg-macro "true")
     '("token_if_group_end:NF" TeX-arg-macro "false")
     '("token_if_group_end:NTF" TeX-arg-macro "true" "false")
     '("token_if_math_shift_p:N" TeX-arg-macro)
     '("token_if_math_shift:NT" TeX-arg-macro "true")
     '("token_if_math_shift:NF" TeX-arg-macro "false")
     '("token_if_math_shift:NTF" TeX-arg-macro "true" "false")
     '("token_if_alignment_tab_p:N" TeX-arg-macro)
     '("token_if_alignment_tab:NT" TeX-arg-macro "arg2")
     '("token_if_alignment_tab:NF" TeX-arg-macro "arg2")
     '("token_if_alignment_tab:NTF" TeX-arg-macro "arg2" "arg3")
     '("token_if_parameter_p:N" TeX-arg-macro)
     '("token_if_parameter:NT" TeX-arg-macro "true")
     '("token_if_parameter:NF" TeX-arg-macro "false")
     '("token_if_parameter:NTF" TeX-arg-macro "true" "false")
     '("token_if_math_superscript_p:N" TeX-arg-macro)
     '("token_if_math_superscript:NT" TeX-arg-macro "true")
     '("token_if_math_superscript:NF" TeX-arg-macro "false")
     '("token_if_math_superscript:NTF" TeX-arg-macro "true" "false")
     '("token_if_math_subscript_p:N" TeX-arg-macro)
     '("token_if_math_subscript:NT" TeX-arg-macro "true")
     '("token_if_math_subscript:NF" TeX-arg-macro "false")
     '("token_if_math_subscript:NTF" TeX-arg-macro "true" "false")
     '("token_if_space_p:N" TeX-arg-macro)
     '("token_if_space:NT" TeX-arg-macro "true")
     '("token_if_space:NF" TeX-arg-macro "false")
     '("token_if_space:NTF" TeX-arg-macro "true" "false")
     '("token_if_letter_p:N" TeX-arg-macro)
     '("token_if_letter:NT" TeX-arg-macro "true")
     '("token_if_letter:NF" TeX-arg-macro "false")
     '("token_if_letter:NTF" TeX-arg-macro "true" "false")
     '("token_if_other_char_p:N" TeX-arg-macro)
     '("token_if_other_char:NT" TeX-arg-macro "true")
     '("token_if_other_char:NF" TeX-arg-macro "false")
     '("token_if_other_char:NTF" TeX-arg-macro "true" "false")
     '("token_if_active_char_p:N" TeX-arg-macro)
     '("token_if_active_char:NT" TeX-arg-macro "true")
     '("token_if_active_char:NF" TeX-arg-macro "false")
     '("token_if_active_char:NTF" TeX-arg-macro "true" "false")
     '("token_if_eq_meaning_p:NN" TeX-arg-macro TeX-arg-macro)
     '("token_if_eq_meaning:NNT" TeX-arg-macro TeX-arg-macro "true")
     '("token_if_eq_meaning:NNF" TeX-arg-macro TeX-arg-macro "false")
     '("token_if_eq_meaning:NNTF" TeX-arg-macro TeX-arg-macro "true" "false")
     '("token_if_eq_catcode_p:NN" TeX-arg-macro TeX-arg-macro)
     '("token_if_eq_catcode:NNT" TeX-arg-macro TeX-arg-macro "true")
     '("token_if_eq_catcode:NNF" TeX-arg-macro TeX-arg-macro "false")
     '("token_if_eq_catcode:NNTF" TeX-arg-macro TeX-arg-macro "true" "false")
     '("token_if_eq_charcode_p:NN" TeX-arg-macro TeX-arg-macro)
     '("token_if_eq_charcode:NNT" TeX-arg-macro TeX-arg-macro "arg3")
     '("token_if_eq_charcode:NNF" TeX-arg-macro TeX-arg-macro "arg3")
     '("token_if_eq_charcode:NNTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     '("token_if_macro_p:N" TeX-arg-macro)
     '("token_if_macro:NT" TeX-arg-macro "true")
     '("token_if_macro:NF" TeX-arg-macro "false")
     '("token_if_macro:NTF" TeX-arg-macro "true" "false")
     '("token_if_cs_p:N" TeX-arg-macro)
     '("token_if_cs:NT" TeX-arg-macro "true")
     '("token_if_cs:NF" TeX-arg-macro "false")
     '("token_if_cs:NTF" TeX-arg-macro "true" "false")
     '("token_if_expandable_p:N" TeX-arg-macro)
     '("token_if_expandable:NT" TeX-arg-macro "true")
     '("token_if_expandable:NF" TeX-arg-macro "false")
     '("token_if_expandable:NTF" TeX-arg-macro "true" "false")
     '("token_if_long_macro_p:N" TeX-arg-macro)
     '("token_if_long_macro:NT" TeX-arg-macro "true")
     '("token_if_long_macro:NF" TeX-arg-macro "false")
     '("token_if_long_macro:NTF" TeX-arg-macro "true" "false")
     '("token_if_protected_macro_p:N" TeX-arg-macro)
     '("token_if_protected_macro:NT" TeX-arg-macro "arg2")
     '("token_if_protected_macro:NF" TeX-arg-macro "arg2")
     '("token_if_protected_macro:NTF" TeX-arg-macro "arg2" "arg3")
     '("token_if_protected_long_macro_p:N" TeX-arg-macro)
     '("token_if_protected_long_macro:NT" TeX-arg-macro "true")
     '("token_if_protected_long_macro:NF" TeX-arg-macro "false")
     '("token_if_protected_long_macro:NTF" TeX-arg-macro "true" "false")
     '("token_if_chardef_p:N" TeX-arg-macro)
     '("token_if_chardef:NT" TeX-arg-macro "true")
     '("token_if_chardef:NF" TeX-arg-macro "false")
     '("token_if_chardef:NTF" TeX-arg-macro "true" "false")
     '("token_if_mathchardef_p:N" TeX-arg-macro)
     '("token_if_mathchardef:NT" TeX-arg-macro "true")
     '("token_if_mathchardef:NF" TeX-arg-macro "false")
     '("token_if_mathchardef:NTF" TeX-arg-macro "true" "false")
     '("token_if_int_register_p:N" TeX-arg-macro)
     '("token_if_int_register:NT" TeX-arg-macro "true")
     '("token_if_int_register:NF" TeX-arg-macro "false")
     '("token_if_int_register:NTF" TeX-arg-macro "true" "false")
     '("token_if_dim_register_p:N" TeX-arg-macro)
     '("token_if_dim_register:NT" TeX-arg-macro "true")
     '("token_if_dim_register:NF" TeX-arg-macro "false")
     '("token_if_dim_register:NTF" TeX-arg-macro "true" "false")
     '("token_if_skip_register_p:N" TeX-arg-macro)
     '("token_if_skip_register:NT" TeX-arg-macro "true")
     '("token_if_skip_register:NF" TeX-arg-macro "false")
     '("token_if_skip_register:NTF" TeX-arg-macro "true" "false")
     '("token_if_toks_register_p:N" TeX-arg-macro)
     '("token_if_toks_register:NT" TeX-arg-macro "true")
     '("token_if_toks_register:NF" TeX-arg-macro "false")
     '("token_if_toks_register:NTF" TeX-arg-macro "true" "false")
     '("token_get_prefix_spec:N" TeX-arg-macro)
     '("token_get_arg_spec:N" TeX-arg-macro)
     '("token_get_replacement_spec:N" TeX-arg-macro)
     '("token_if_primitive_p:N" TeX-arg-macro)
     '("token_if_primitive:NT" TeX-arg-macro "true")
     '("token_if_primitive:NF" TeX-arg-macro "false")
     '("token_if_primitive:NTF" TeX-arg-macro "true" "false")
     '("peek_after:NN" TeX-arg-macro TeX-arg-macro)
     '("peek_gafter:NN" TeX-arg-macro TeX-arg-macro)
     '("peek_meaning:NT" TeX-arg-macro "true")
     '("peek_meaning:NF" TeX-arg-macro "false")
     '("peek_meaning:NTF" TeX-arg-macro "true" "false")
     '("peek_meaning_ignore_spaces:NT" TeX-arg-macro "arg2")
     '("peek_meaning_ignore_spaces:NF" TeX-arg-macro "arg2")
     '("peek_meaning_ignore_spaces:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_meaning_remove:NT" TeX-arg-macro "arg2")
     '("peek_meaning_remove:NF" TeX-arg-macro "arg2")
     '("peek_meaning_remove:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_meaning_remove_ignore_spaces:NT" TeX-arg-macro "arg2")
     '("peek_meaning_remove_ignore_spaces:NF" TeX-arg-macro "arg2")
     '("peek_meaning_remove_ignore_spaces:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_charcode:NT" TeX-arg-macro "true")
     '("peek_charcode:NF" TeX-arg-macro "false")
     '("peek_charcode:NTF" TeX-arg-macro "true" "false")
     '("peek_charcode_ignore_spaces:NT" TeX-arg-macro "arg2")
     '("peek_charcode_ignore_spaces:NF" TeX-arg-macro "arg2")
     '("peek_charcode_ignore_spaces:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_charcode_remove:NT" TeX-arg-macro "arg2")
     '("peek_charcode_remove:NF" TeX-arg-macro "arg2")
     '("peek_charcode_remove:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_charcode_remove_ignore_spaces:NT" TeX-arg-macro "arg2")
     '("peek_charcode_remove_ignore_spaces:NF" TeX-arg-macro "arg2")
     '("peek_charcode_remove_ignore_spaces:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_catcode:NT" TeX-arg-macro "true")
     '("peek_catcode:NF" TeX-arg-macro "false")
     '("peek_catcode:NTF" TeX-arg-macro "true" "false")
     '("peek_catcode_ignore_spaces:NT" TeX-arg-macro "arg2")
     '("peek_catcode_ignore_spaces:NF" TeX-arg-macro "arg2")
     '("peek_catcode_ignore_spaces:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_catcode_remove:NT" TeX-arg-macro "arg2")
     '("peek_catcode_remove:NF" TeX-arg-macro "arg2")
     '("peek_catcode_remove:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_catcode_remove_ignore_spaces:NT" TeX-arg-macro "arg2")
     '("peek_catcode_remove_ignore_spaces:NF" TeX-arg-macro "arg2")
     '("peek_catcode_remove_ignore_spaces:NTF" TeX-arg-macro "arg2" "arg3")
     '("peek_token_generic:NNT" TeX-arg-macro TeX-arg-macro "true")
     '("peek_token_generic:NNF" TeX-arg-macro TeX-arg-macro "false")
     '("peek_token_generic:NNTF" TeX-arg-macro TeX-arg-macro "true" "false")
     '("peek_token_remove_generic:NNT" TeX-arg-macro TeX-arg-macro "arg3")
     '("peek_token_remove_generic:NNF" TeX-arg-macro TeX-arg-macro "arg3")
     '("peek_token_remove_generic:NNTF" TeX-arg-macro TeX-arg-macro "arg3" "arg4")
     "peek_execute_branches_meaning:"
     "peek_execute_branches_charcode:"
     "peek_execute_branches_catcode:"
     "c_group_begin_token"
     "c_group_end_token"
     "c_math_shift_token"
     "c_alignment_tab_token"
     "c_parameter_token"
     "c_math_superscript_token"
     "c_math_subscript_token"
     "c_space_token"
     "c_letter_token"
     "c_other_char_token"
     "c_active_char_token"
     "l_peek_token"
     "g_peek_token"
     "l_peek_search_token"
     "l_peek_true_tl"
     "l_peek_false_tl"
     "l_peek_search_tl"
     "l_peek_true_aux_tl"
     "c_peek_true_remove_next_tl"))))
