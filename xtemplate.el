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
 "xtemplate"
 (function
  (lambda ()
    (TeX-run-style-hooks "l3names" "expl3")
    (TeX-add-symbols
     '("DeclareObjectType" "Object type" "Number of arguments")
     '("DeclareTemplateInterface" "Object type" "Template" "Number of arguments" t)
     '("DeclareTemplateCode" "Object type" "Template" "Number of arguments" 2)
     '("DeclareRestrictedTemplate" "Object type" "Parent" "New template" t)
     '("DeclareInstance" "Object type" "Instance" "Template" t)
     '("DeclareCollectionInstance" "Collection" "Object type" "Instance" "Template" t)
     '("EditTemplateDefaults" "Object type" "Template" t)
     '("EditInstance" "Object type" "Instance" t)
     '("EditCollectionInstance" "Collection" "Object type" "Instance" t)
     '("UseTemplate" "Object type" "Template" "Settings" t)
     '("UseInstance" "Object type" "Instance" t)
     '("UseCollection" "Object type" "Collection")
     '("ShowTemplateCode" "Object type" "Template")
     '("ShowTemplateDefault" "Object type" "Template")
     '("ShowTemplateKeytypes" "Object type" "Template")
     '("ShowTemplateVariables" "Object type" "Template")
     '("ShowInstanceValues" "Object type" "Instance")
     '("ShowCollectionInstanceValues" "Object type" "Collection" "Instance")
     '("IfInstanceExistTF" "Object type" "Instance" 2)
     '("IfInstanceExistT" "Object type" "Instance" t)
     '("IfInstanceExistF" "Object type" "Instance" t)
     '("EvaluateNow" t)
     '("KeyValue" "Key name")
     "AssignTemplateKeys"))))
