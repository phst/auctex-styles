;; Copyright (c) 2010, Philipp Stephani <st_philipp@yahoo.de>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(TeX-add-style-hook
 "l3names"
 (function
  (lambda ()
    (TeX-run-style-hooks "luatex" "pdftexcmds" "l3names-autogen")
    (TeX-add-symbols
     "ExplSyntaxStatus" "GetIdInfo"
     "filename" "fileversion" "filedescription" "fileauthor"
     "filenameext" "filedate" "filetimestamp"
     '("ProvidesExplPackage" "Name" "Date" "Version" "Description")
     '("ProvidesExplClass" "Name" "Date" "Version" "Description")
     '("ProvidesExplFile" "Name" "Date" "Version" "Description")))))

(defvar LaTeX-l3names-package-options
  '("removeoldnames" "keepoldnames")
  "Package options for the l3names package.")
