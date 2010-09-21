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
 "l3msg-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("msg_class_new:nn" "arg1" "arg2")
     '("msg_class_set:nn" "arg1" "arg2")
     '("msg_redirect_class:nn" "arg1" "arg2")
     '("msg_redirect_name:nnn" "arg1" "arg2" "arg3")
     "msg_line_context:"
     "msg_line_number:"
     "msg_newline:"
     "msg_two_newlines:"
     '("msg_generic_new:nnn" "arg1" "arg2" "arg3")
     '("msg_generic_new:nn" "arg1" "arg2")
     '("msg_generic_set:nnn" "arg1" "arg2" "arg3")
     '("msg_generic_set:nn" "arg1" "arg2")
     '("msg_direct_log:xx" "arg1" "arg2")
     '("msg_direct_term:xx" "arg1" "arg2")
     '("msg_kernel_bug:x" "arg1")
     "c_msg_fatal_tl"
     "c_msg_error_tl"
     "c_msg_warning_tl"
     "c_msg_info_tl"
     "c_msg_coding_error_text_tl"
     "c_msg_fatal_text_tl"
     "c_msg_help_text_tl"
     "c_msg_kernel_bug_text_tl"
     "c_msg_kernel_bug_more_text_tl"
     "c_msg_no_info_text_tl"
     "c_msg_return_text_tl"
     "c_msg_on_line_tl"
     "c_msg_text_prefix_tl"
     "c_msg_more_text_prefix_tl"
     "l_msg_class_tl"
     "l_msg_current_class_tl"
     "l_msg_current_module_tl"
     "l_msg_names_clist"
     "l_msg_redirect_classes_prop"
     "l_msg_redirect_names_prop"
     "l_msg_redirect_classes_clist"))))
