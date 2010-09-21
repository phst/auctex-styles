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
 "l3file-autogen"
 (function
  (lambda ()
    (TeX-add-symbols
     '("file_if_exist:nT" "arg1" "arg2")
     '("file_if_exist:nF" "arg1" "arg2")
     '("file_if_exist:nTF" "arg1" "arg2" "arg3")
     '("file_if_exist:VT" TeX-arg-macro "arg2")
     '("file_if_exist:VF" TeX-arg-macro "arg2")
     '("file_if_exist:VTF" TeX-arg-macro "arg2" "arg3")
     '("file_input:n" "arg1")
     '("file_input:V" TeX-arg-macro)
     '("file_path_include:n" "arg1")
     '("file_path_remove:n" "arg1")
     "file_list:"
     "g_file_current_name_tl"))))
