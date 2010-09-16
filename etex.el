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
