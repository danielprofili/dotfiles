#!/bin/bash
emacsclient -c -F '((name . "capture") (width . 80) (height . 34))' -e '(progn (org-capture) (delete-other-windows))'
