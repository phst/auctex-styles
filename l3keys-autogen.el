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
 "l3keys-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("keys_define:nn" "module" "keyval list")
     '("bool_set:N" TeX-arg-macro)
     '("bool_gset:N" TeX-arg-macro)
     "choice:"
     '("choice_code:n" "arg1")
     '("choice_code:x" "arg1")
     '("code:n" "arg1")
     '("code:x" "arg1")
     '("default:n" "arg1")
     '("default:V" TeX-arg-macro)
     '("dim_set:N" TeX-arg-macro)
     '("dim_set:c" "arg1")
     '("dim_gset:N" TeX-arg-macro)
     '("dim_gset:c" "arg1")
     '("generate_choices:n" "arg1")
     '("int_set:N" TeX-arg-macro)
     '("int_set:c" "arg1")
     '("int_gset:N" TeX-arg-macro)
     '("int_gset:c" "arg1")
     '("meta:n" "arg1")
     '("meta:x" "arg1")
     '("skip_set:N" TeX-arg-macro)
     '("skip_set:c" "arg1")
     '("skip_gset:N" TeX-arg-macro)
     '("skip_gset:c" "arg1")
     '("tl_set:N" TeX-arg-macro)
     '("tl_set:c" "arg1")
     '("tl_set_x:N" TeX-arg-macro)
     '("tl_set_x:c" "arg1")
     '("tl_gset:N" TeX-arg-macro)
     '("tl_gset:c" "arg1")
     '("tl_gset_x:N" TeX-arg-macro)
     '("tl_gset_x:c" "arg1")
     "value_forbidden:"
     "value_required:"
     '("keys_set:nn" "module" "keyval list")
     '("keys_set:nV" "arg1" TeX-arg-macro)
     '("keys_set:nv" "arg1" "arg2")
     '("keys_show:nn" "module" "key")
     '("keys_bool_set:NN" TeX-arg-macro TeX-arg-macro)
     '("keys_choice_code_store:x" TeX-arg-macro)
     "keys_choice_make:"
     '("keys_choices_generate:n" "comma list")
     '("keys_choice_find:n" "choice")
     '("keys_cmd_set:nn" "path" "code")
     '("keys_cmd_set:nx" "arg1" "arg2")
     '("keys_default_set:n" "default")
     '("keys_default_set:V" TeX-arg-macro)
     '("keys_define_elt:n" "arg1")
     '("keys_define_elt:nn" "key" "value")
     '("keys_define_key:n" "key")
     "keys_execute:"
     "keys_execute_unknown:"
     '("keys_meta_make:n" "keys")
     '("keys_meta_make:x" "arg1")
     '("keys_property_find:n" "key")
     '("keys_property_new:nn" "property" "code")
     '("keys_property_new_arg:nn" "arg1" "arg2")
     '("keys_property_undefine:n" "property")
     '("keys_set_elt:n" "arg1")
     '("keys_set_elt:nn" "key" "value")
     '("keys_tmp:w" TeX-arg-macro)
     '("keys_value_or_default:n" "value")
     '("keys_value_requirement:n" "requirement")
     '("keys_variable_set:NnNN" TeX-arg-macro TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     '("keys_variable_set:cnNN" "arg1" "arg2" TeX-arg-macro TeX-arg-macro)
     "l_keys_choice_int"
     "l_keys_choice_tl"
     "l_keys_key_tl"
     "c_keys_properties_root_tl"
     "c_keys_root_tl"
     "c_keys_value_forbidden_tl"
     "c_keys_value_required_tl"
     "l_keys_choice_code_tl"
     "l_keys_module_tl"
     "l_keys_path_tl"
     "l_keys_property_tl"
     "l_keys_no_value_bool"
     "l_keys_value_tl"))))
