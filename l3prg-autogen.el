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
 "l3prg-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("bool_new:N" TeX-arg-macro)
     '("bool_new:c" "arg1")
     '("bool_set_true:N" TeX-arg-macro)
     '("bool_set_true:c" "arg1")
     '("bool_set_false:N" TeX-arg-macro)
     '("bool_set_false:c" "arg1")
     '("bool_gset_true:N" TeX-arg-macro)
     '("bool_gset_true:c" "arg1")
     '("bool_gset_false:N" TeX-arg-macro)
     '("bool_gset_false:c" "arg1")
     '("bool_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("bool_set_eq:Nc" TeX-arg-macro "arg2")
     '("bool_set_eq:cN" "arg1" TeX-arg-macro)
     '("bool_set_eq:cc" "arg1" "arg2")
     '("bool_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("bool_gset_eq:Nc" TeX-arg-macro "arg2")
     '("bool_gset_eq:cN" "arg1" TeX-arg-macro)
     '("bool_gset_eq:cc" "arg1" "arg2")
     '("bool_not_p:n" "boolean expression")
     '("bool_xor_p:nn" "boolean expression" "boolean expression")
     '("bool_set:Nn" TeX-arg-macro "boolean expression")
     '("bool_set:cn" "arg1" "arg2")
     '("bool_gset:Nn" TeX-arg-macro "arg2")
     '("bool_gset:cn" "arg1" "arg2")
     "mode_if_vertical_p:"
     '("mode_if_vertical:T" "true code")
     '("mode_if_vertical:F" "false code")
     '("mode_if_vertical:TF" "true code" "false code")
     "mode_if_horizontal_p:"
     '("mode_if_horizontal:T" "true code")
     '("mode_if_horizontal:F" "false code")
     '("mode_if_horizontal:TF" "true code" "false code")
     "mode_if_inner_p:"
     '("mode_if_inner:T" "true code")
     '("mode_if_inner:F" "false code")
     '("mode_if_inner:TF" "true code" "false code")
     "mode_if_math_p:"
     '("mode_if_math:T" "true code")
     '("mode_if_math:F" "false code")
     '("mode_if_math:TF" "true code" "false code")
     "scan_align_safe_stop:"
     '("group_align_safe_begin:" TeX-arg-macro)
     "group_align_safe_end:"
     '("prg_replicate:nn" "number" "arg")
     '("prg_quicksort:n" "item~1" "item~2" "item~n")
     '("prg_variable_get_scope:N" TeX-arg-macro)
     '("prg_variable_get_type:N" TeX-arg-macro)
     '("prg_new_map_functions:Nn" TeX-arg-macro "arg2")
     '("prg_set_map_functions:Nn" TeX-arg-macro "arg2")
     "g_prg_inline_level_int"))))
