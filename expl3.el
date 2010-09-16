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
 "expl3"
 (function
  (lambda ()
    (TeX-run-style-hooks
     "l3names" "etex"
     "l3basics" "l3expan" "l3tl" "l3intexpr" "l3quark" "l3seq" "l3toks"
     "l3int" "l3prg" "l3clist" "l3token" "l3prop" "l3msg" "l3io" "l3skip"
     "l3box" "l3keyval" "l3keys" "l3precom" "l3xref" "l3file" "l3fp" "l3luatex"
     "calc"))))

(defvar LaTeX-expl3-package-options
'("check-declarations" "log-functions")
"Package options for the expl3 package.")
