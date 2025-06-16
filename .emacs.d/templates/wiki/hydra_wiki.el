(defun dp/wiki-new-index ()
  "Inserts the index template from the templates directory."
  (interactive)
  (insert-file-contents "~/.emacs.d/templates/wiki/index.org"))

(defun dp/wiki-new-character ()
  "Inserts the character template from the templates directory."
  (interactive)
  (insert-file-contents "~/.emacs.d/templates/wiki/character.org"))

(defhydra hydra-wiki-templates-menu (:color blue :hint nil)
  "
_i_ndex
_c_haracter
_C_ategory

_q_ cancel
"
  ("i" dp/wiki-new-index "Index")
  ("c" dp/wiki-new-character "Character")
  ("C" dp/wiki-new-category "Category")
  ("q" nil "Cancel")
  )
