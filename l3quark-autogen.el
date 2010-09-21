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
 "l3quark-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("quark_new:N" TeX-arg-macro)
     '("quark_if_nil_p:N" TeX-arg-macro)
     '("quark_if_nil:NT" TeX-arg-macro "true code")
     '("quark_if_nil:NF" TeX-arg-macro "false code")
     '("quark_if_nil:NTF" TeX-arg-macro "true code" "false code")
     '("quark_if_nil_p:n" "arg1")
     '("quark_if_nil_p:V" TeX-arg-macro)
     '("quark_if_nil_p:o" TeX-arg-macro)
     '("quark_if_nil:nT" "tokens" "true code")
     '("quark_if_nil:nF" "tokens" "false code")
     '("quark_if_nil:nTF" "tokens" "true code" "false code")
     '("quark_if_nil:VT" TeX-arg-macro "arg2")
     '("quark_if_nil:VF" TeX-arg-macro "arg2")
     '("quark_if_nil:VTF" TeX-arg-macro "arg2" "arg3")
     '("quark_if_nil:oT" TeX-arg-macro "arg2")
     '("quark_if_nil:oF" TeX-arg-macro "arg2")
     '("quark_if_nil:oTF" TeX-arg-macro "arg2" "arg3")
     "q_recursion_tail"
     "q_recursion_stop"
     "q_no_value"
     "q_stop"
     "q_nil"
     "q_error"
     "q_mark"))))
