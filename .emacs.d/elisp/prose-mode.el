;; Prose Mode
;; Daniel Profili
;; Last updated Oct 2018

(define-minor-mode prose-mode
  "Toggle prose mode.
Interactively with no argument, this command toggles the mode.
A positive prefix argument enables the mode, any other prefix
argument disables it. From Lisp, argument omitted or nil enables
the mode, and 'toggle' toggles the state.

Prose mode enables (and requires) \\[writeroom-mode], as well as
defines a few useful bindings."
  nil
  " Prose"
  
