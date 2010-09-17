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
 "l3io"
 (function
  (lambda ()
    (TeX-add-symbols
     '("iow_new:N" TeX-arg-macro)
     '("iow_new:c" "arg1")
     '("ior_new:N" TeX-arg-macro)
     '("ior_new:c" "arg1")
     "iow_open_streams:"
     "iow_open_streams:"
     '("iow_now:Nx" TeX-arg-macro "tokens")
     '("iow_now:Nn" TeX-arg-macro "arg2")
     '("iow_log:n" "arg1")
     '("iow_log:x" "tokens")
     '("iow_term:n" "arg1")
     '("iow_term:x" "arg1")
     '("iow_now_buffer_safe:Nn" TeX-arg-macro "tokens")
     '("iow_now_buffer_safe:Nx" TeX-arg-macro "arg2")
     '("iow_now_when_avail:Nn" TeX-arg-macro "tokens")
     '("iow_now_when_avail:cn" "arg1" "arg2")
     '("iow_now_when_avail:Nx" TeX-arg-macro "arg2")
     '("iow_now_when_avail:cx" "arg1" "arg2")
     '("iow_shipout:Nx" TeX-arg-macro "tokens")
     '("iow_shipout:Nn" TeX-arg-macro "arg2")
     '("iow_shipout_x:Nx" TeX-arg-macro "tokens")
     '("iow_shipout_x:Nn" TeX-arg-macro "arg2")
     "iow_newline:"
     '("ior_to:NN" TeX-arg-macro TeX-arg-macro)
     '("ior_gto:NN" TeX-arg-macro TeX-arg-macro)
     '("ior_if_eof_p:N" TeX-arg-macro)
     '("ior_if_eof:NT" TeX-arg-macro "true code")
     '("ior_if_eof:NF" TeX-arg-macro "false code")
     '("ior_if_eof:NTF" TeX-arg-macro "true code" "false code")
     '("iow_raw_new:N" TeX-arg-macro)
     '("iow_raw_new:c" "arg1")
     '("ior_raw_new:N" TeX-arg-macro)
     '("ior_raw_new:c" "arg1")
     '("if_eof:w" TeX-arg-macro TeX-arg-macro TeX-arg-macro)
     "c_io_streams_tl"
     "c_iow_term_stream"
     "c_ior_term_stream"
     "c_iow_log_stream"
     "c_ior_log_stream"
     "g_iow_streams_prop"
     "g_ior_streams_prop"
     "g_iow_tmp_stream"
     "g_ior_tmp_stream"
     "l_iow_stream_int"
     "l_ior_stream_int"))))
