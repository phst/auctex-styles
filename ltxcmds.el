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
 "ltxcmds"
 (function
  (lambda ()
    (TeX-add-symbols
     "ltx@zero" "ltx@one" "ltx@two" "ltx@cclv"
     "ltx@gobble" "ltx@gobbletwo" "ltx@gobblethree" "ltx@gobblefour"
     '("ltx@GobbleNum" "number")
     "ltx@firstofone" "ltx@secondofone" "ltx@secondoftwo"
     "@nil"
     "ltx@carzero" "ltx@cdrzero"
     "ltx@car" "ltx@cdr"
     "ltx@cartwo" "ltx@cdrtwo"
     "ltx@carthree" "ltx@cdrthree"
     "ltx@carfour" "ltx@cdrfour"
     '("ltx@CarNum" "number") '("ltx@CdrNum" "number")
     "ltx@ReturnAfterFi" "ltx@ReturnAfterElseFi"
     "ltx@empty"
     "ltx@space" "ltx@percentchar" "ltx@backslashchar" "ltx@hashchar"
     '("ltx@newif" TeX-arg-define-macro)
     '("ltx@ifundefined" TeX-arg-macro "yes" "no")
     '("ltx@IfUndefined" TeX-arg-macro "yes" "no")
     "ltx@LocalExpandAfter"
     "ltx@RemovePrefix" "ltx@StripPrefix"
     "ltx@clsextension" "ltx@pkgextension"
     '("ltx@ifclassloaded" "class" "yes" "no")
     '("ltx@ifpackageloaded" "package" "yes" "no")
     '("ltx@iffileloaded" "file" "yes" "no")
     '("ltx@ifclasslater" "class" "date" "yes" "no")
     '("ltx@ifpackagelater" "package" "date" "yes" "no")
     '("ltx@iffilelater" "file" "date" "yes" "no")
     '("ltx@GlobalAppendToMacro" TeX-arg-macro t)
     '("ltx@LocalAppendToMacro" TeX-arg-macro t)
     '("ltx@ifnextchar" "char" "yes" "no")
     "ltx@leavevmode"
     "ltx@mbox"))))
