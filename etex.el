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
 "etex"
 (function
  (lambda ()
    (apply
     'TeX-add-symbols
     "eTeX"
     "tracingcommands" "tracinglostchars" "tracinggroups" "tracingifs"
     "tracingscantokens" "tracingnesting" "tracingassigns"
     "tracingall" "loggingall" "tracingnone"
     '("reserveinserts" "Number")
     "bottomleveltype" "simplegrouptype"
     "hboxgrouptype" "adjustedhboxgrouptype" "vboxgrouptype" "vtopgrouptype"
     "aligngrouptype" "noaligngrouptype"
     "outputgrouptype" "mathgrouptype" "discgrouptype"
     "insertgrouptype" "vcentergrouptype" "mathchoicegrouptype"
     "semisimplegrouptype" "mathshiftgrouptype" "mathleftgrouptype"
     "batchinterationmode" "nonstopinteractionmode"
     "scrollinteractionmode" "errorstopinteractionmode"
     "charnode" "hlistnode" "vlistnode" "rulenode" "insnode" "marknode"
     "adjustnode" "ligaturenode" "discnode" "whatsitnode" "mathnode"
     "gluenode" "kernnode" "penaltynode" "unsetnode" "mathsnodes"
     "charif" "catif" "numif" "dimif" "oddif"
     "vmodeif" "hmodeif" "mmodeif" "innerif"
     "voidif" "hboxif" "vboxif"
     "xif" "eofif" "trueif" "falseif" "caseif"
     "definedif" "csnameif" "fontcharif")
    (append
     (mapcar
      (lambda (name)
        (list name 'TeX-arg-define-macro))
      '("globcount" "loccount"
        "globdimen" "locdimen"
        "globskip" "locskip"
        "globmuskip" "locmuskip"
        "globbox" "locbox"
        "globtoks" "loctoks"
        "globmarks" "locmarks" "newmarks"))
     (mapcar
      (lambda (name)
        (list name 'TeX-arg-define-macro "Size"))
      '("globcountblk" "loccountblk"
        "globdimenblk" "locdimenblk"
        "globskipblk" "locskipblk"
        "globmuskipblk" "locmuskipblk"
        "globboxblk" "locboxblk"
        "globtoksblk" "loctoksblk"
        "globmarksblk" "locmarksblk"))))))

(defvar LaTeX-etex-package-options
  '("grouptypes" "interactionmodes" "nodetypes" "iftypes"
    "localalloclog" "localallocnolog" "localallocshow")
  "Package options for the etex package.")
