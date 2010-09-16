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
 "xparse"
 (function
  (lambda ()
    (TeX-run-style-hooks "l3names" "expl3")
    (TeX-add-symbols
     "BooleanFalse" "BooleanTrue"
     '("DeclareDocumentCommand" TeX-arg-define-macro "Argument specification" t)
     '("NewDocumentCommand" TeX-arg-define-macro "Argument specification" t)
     '("RenewDocumentCommand" TeX-arg-define-macro "Argument specification" t)
     '("ProvideDocumentCommand" TeX-arg-define-macro "Argument specification" t)
     '("DeclareDocumentCommandImplementation" "Implementation name" "Number of arguments" t)
     '("DeclareDocumentCommandInterface" TeX-arg-define-macro "Implementation name" "Argument specification")
     '("DeclareDocumentEnvironment" TeX-arg-define-environment "Argument specification" 2)
     '("NewDocumentEnvironment" TeX-arg-define-environment "Argument specification" 2)
     '("RenewDocumentEnvironment" TeX-arg-define-environment "Argument specification" 2)
     '("ProvideDocumentEnvironment" TeX-arg-define-environment "Argument specification" 2)
     '("DeclareExpandableDocumentCommand" TeX-arg-define-macro "Argument specification" t)
     '("IfBooleanT" t) '("IfBooleanF" t) '("IfBooleanTF" 2)
     '("IfValueT" t) '("IfValueF" t) '("IfValueTF" 2)
     '("IfNoValueT" t) '("IfNoValueF" t) '("IfNoValueTF" 2)
     "NoValue" "ProcessedArgument"
     '("ReverseBoolean" "Boolean value")
     '("SplitArgument" "Number" "Token")
     '("SplitList" "Token")))))
