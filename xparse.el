;; Copyright (c) 2010, Philipp Stephani
;;
;; Permission to use, copy, modify, and/or distribute this software for any
;; purpose with or without fee is hereby granted, provided that the above
;; copyright notice and this permission notice appear in all copies.
;;
;; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
;; REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
;; FITNESS.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
;; INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
;; LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
;; OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
;; PERFORMANCE OF THIS SOFTWARE.

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
