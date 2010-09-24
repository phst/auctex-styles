;; Copyright (c) 2010, Philipp Stephani <st_philipp@yahoo.de>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to
;; deal in the Software without restriction, including without limitation the
;; rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
;; sell copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
;; IN THE SOFTWARE.

(TeX-add-style-hook
 "pdftexcmds"
 (function
  (lambda ()
    (TeX-run-style-hooks "infwarerr" "ifluatex" "ltxcmds" "luatex-loader")
    (TeX-add-symbols
     '("pdf@strcmp" "String-A" "String-B")
     '("pdf@unescapehex" "String")
     '("pdf@escapehex" "String")
     '("pdf@escapestring" "String")
     '("pdf@escapename" "String")
     '("pdf@filesize" TeX-arg-file)
     '("pdf@filemoddate" TeX-arg-file)
     '("pdf@filedump" "Offset" "Length" TeX-arg-file)
     '("pdf@mdfivesum" "String")
     '("pdf@filemdfivesum" TeX-arg-file)
     "pdf@shellescape"
     '("pdf@system" "Command line")
     '("pdf@primitive" TeX-arg-macro)
     '("pdf@ifprimitive" TeX-arg-macro)
     '("pdf@isprimitive" TeX-arg-macro TeX-arg-macro "True code" "False code")
     '("pdf@unescapehexnative" "String")
     '("pdf@escapehexnative" "String")
     '("pdf@escapenamenative" "String")
     '("pdf@mdfivesumnative" "String")
     '("pdf@pipe" "Command line")))))
