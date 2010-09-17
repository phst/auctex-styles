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
 "fontspec"
 (function
  (lambda ()
    (TeX-run-style-hooks "expl3" "xparse" "luatextra")
    (TeX-add-symbols
     '("fontspec" ["Font features"] "Font name")
     '("setmainfont" ["Font features"] "Font name")
     '("setsansfont" ["Font features"] "Font name")
     '("setmonofont" ["Font features"] "Font name")
     '("newfontfamily" TeX-arg-define-macro ["Font features"] "Font name")
     '("newfontface" TeX-arg-define-macro ["Font features"] "Font name")
     '("setmathrm" ["Font features"] "Font name")
     '("setmathsf" ["Font features"] "Font name")
     '("setmathtt" ["Font features"] "Font name")
     '("setboldmathrm" ["Font features"] "Font name")
     "emshape" "eminnershape"
     '("defaultfontfeatures" "Font features")
     '("addfontfeatures" "Font features")
     '("addfontfeature" "Font features")
     '("newAATfeature" "Feature" "Option" "Feature code" "Selector code")
     '("newICUfeature" "Feature" "Option" "Feature tag")
     '("newopentypefeature" "Feature" "Option" "Feature tag")
     '("newfontfeature" "Feature" "Input string")
     '("aliasfontfeature" "Existing name" "New name")
     '("aliasfontfeatureoption" "Font feature" "Existing name" "New name")))))

(defvar LaTeX-fontspec-package-options
  '("no-math", "no-config", "quiet", "silent")
  "Package options for the fontspec package.")
