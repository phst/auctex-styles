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
 "l3box"
 (function
  (lambda ()
    (TeX-add-symbols
     '("box_new:N" TeX-arg-macro)
     '("box_new:c" "arg1")
     '("box_if_horizontal_p:N" TeX-arg-macro)
     '("box_if_horizontal_p:c" "arg1")
     '("box_if_horizontal:NT" TeX-arg-macro "true code")
     '("box_if_horizontal:NF" TeX-arg-macro "false code")
     '("box_if_horizontal:NTF" TeX-arg-macro "true code" "false code")
     '("box_if_horizontal:cT" "arg1" "arg2")
     '("box_if_horizontal:cF" "arg1" "arg2")
     '("box_if_horizontal:cTF" "arg1" "arg2" "arg3")
     '("box_if_vertical_p:N" TeX-arg-macro)
     '("box_if_vertical_p:c" "arg1")
     '("box_if_vertical:NT" TeX-arg-macro "true code")
     '("box_if_vertical:NF" TeX-arg-macro "false code")
     '("box_if_vertical:NTF" TeX-arg-macro "true code" "false code")
     '("box_if_vertical:cT" "arg1" "arg2")
     '("box_if_vertical:cF" "arg1" "arg2")
     '("box_if_vertical:cTF" "arg1" "arg2" "arg3")
     '("box_if_empty_p:N" TeX-arg-macro)
     '("box_if_empty_p:c" "arg1")
     '("box_if_empty:NT" TeX-arg-macro "true code")
     '("box_if_empty:NF" TeX-arg-macro "false code")
     '("box_if_empty:NTF" TeX-arg-macro "true code" "false code")
     '("box_if_empty:cT" "arg1" "arg2")
     '("box_if_empty:cF" "arg1" "arg2")
     '("box_if_empty:cTF" "arg1" "arg2" "arg3")
     '("box_set_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("box_set_eq:cN" "arg1" TeX-arg-macro)
     '("box_set_eq:Nc" TeX-arg-macro "arg2")
     '("box_set_eq:cc" "arg1" "arg2")
     '("box_set_eq_clear:NN" TeX-arg-macro TeX-arg-macro)
     '("box_set_eq_clear:cN" "arg1" TeX-arg-macro)
     '("box_set_eq_clear:Nc" TeX-arg-macro "arg2")
     '("box_set_eq_clear:cc" "arg1" "arg2")
     '("box_gset_eq:NN" TeX-arg-macro TeX-arg-macro)
     '("box_gset_eq:cN" "arg1" TeX-arg-macro)
     '("box_gset_eq:Nc" TeX-arg-macro "arg2")
     '("box_gset_eq:cc" "arg1" "arg2")
     '("box_gset_eq_clear:NN" TeX-arg-macro TeX-arg-macro)
     '("box_gset_eq_clear:cN" "arg1" TeX-arg-macro)
     '("box_gset_eq_clear:Nc" TeX-arg-macro "arg2")
     '("box_gset_eq_clear:cc" "arg1" "arg2")
     '("box_set_to_last:N" TeX-arg-macro)
     '("box_set_to_last:c" "arg1")
     '("box_gset_to_last:N" TeX-arg-macro)
     '("box_gset_to_last:c" "arg1")
     '("box_move_right:nn" "arg1" "arg2")
     '("box_move_left:nn" "dimen" "box function")
     '("box_move_up:nn" "arg1" "arg2")
     '("box_move_down:nn" "arg1" "arg2")
     '("box_clear:N" TeX-arg-macro)
     '("box_clear:c" "arg1")
     '("box_gclear:N" TeX-arg-macro)
     '("box_gclear:c" "arg1")
     '("box_ht:N" TeX-arg-macro)
     '("box_ht:c" "arg1")
     '("box_dp:N" TeX-arg-macro)
     '("box_dp:c" "arg1")
     '("box_wd:N" TeX-arg-macro)
     '("box_wd:c" "arg1")
     '("box_show:N" TeX-arg-macro)
     '("box_show:c" "arg1")
     '("hbox:n" "contents")
     '("hbox_set:Nn" TeX-arg-macro "contents")
     '("hbox_set:cn" "arg1" "arg2")
     '("hbox_gset:Nn" TeX-arg-macro "arg2")
     '("hbox_gset:cn" "arg1" "arg2")
     '("hbox_set_to_wd:Nnn" TeX-arg-macro "dimen" "contents")
     '("hbox_set_to_wd:cnn" "arg1" "arg2" "arg3")
     '("hbox_gset_to_wd:Nnn" TeX-arg-macro "arg2" "arg3")
     '("hbox_gset_to_wd:cnn" "arg1" "arg2" "arg3")
     '("hbox_overlap_left:n" TeX-arg-macro)
     '("hbox_overlap_right:n" "arg1")
     '("hbox_unpack:N" TeX-arg-macro)
     '("hbox_unpack:c" "arg1")
     '("hbox_unpack_clear:N" TeX-arg-macro)
     '("hbox_unpack_clear:c" "arg1")
     '("vbox:n" "contents")
     '("vbox_top:n" "contents")
     '("vbox_set:Nn" TeX-arg-macro "contents")
     '("vbox_set:cn" "arg1" "arg2")
     '("vbox_gset:Nn" TeX-arg-macro "arg2")
     '("vbox_gset:cn" "arg1" "arg2")
     '("vbox_set_top:Nn" TeX-arg-macro "contents")
     '("vbox_set_top:cn" "arg1" "arg2")
     '("vbox_gset_top:Nn" TeX-arg-macro "arg2")
     '("vbox_gset_top:cn" "arg1" "arg2")
     '("vbox_set_to_ht:Nnn" TeX-arg-macro "dimen" "contents")
     '("vbox_set_to_ht:cnn" "arg1" "arg2" "arg3")
     '("vbox_gset_to_ht:Nnn" TeX-arg-macro "arg2" "arg3")
     '("vbox_gset_to_ht:cnn" "arg1" "arg2" "arg3")
     '("vbox_gset_to_ht:ccn" "arg1" "arg2" "arg3")
     '("vbox_set_split_to_ht:NNn" TeX-arg-macro TeX-arg-macro "dimen")
     '("vbox_unpack:N" TeX-arg-macro)
     '("vbox_unpack:c" "arg1")
     '("vbox_unpack_clear:N" TeX-arg-macro)
     '("vbox_unpack_clear:c" "arg1")
     "c_empty_box"
     "l_tmpa_box"
     "l_tmpb_box"
     "l_last_box"))))
