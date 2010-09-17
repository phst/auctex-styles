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
 "l3keyval"
 (function
  (lambda ()
    (TeX-add-symbols
     '("KV_parse_no_space_removal_no_sanitize:n" "keyval list")
     '("KV_parse_space_removal_no_sanitize:n" "keyval list")
     '("KV_parse_space_removal_sanitize:n" "keyval list")
     '("KV_sanitize_outerlevel_active_equals:N" TeX-arg-macro)
     '("KV_sanitize_outerlevel_active_commas:N" TeX-arg-macro)
     "KV_split_key_value_current:w"
     "l_KV_remove_one_level_of_braces_bool"
     "c_KV_single_equal_sign_tl"
     "l_KV_tmpa_tl"
     "l_KV_tmpb_tl"
     "l_KV_parse_tl"
     "l_KV_currkey_tl"
     "l_KV_currval_tl"))))
