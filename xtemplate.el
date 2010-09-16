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
