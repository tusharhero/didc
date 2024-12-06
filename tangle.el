#!/bin/env -S emacs --script
;; Run this script to `tangle' DIDC from `didc.org', of
;; course the only requirement it has is Emacs is itself.
(message "Loading Org...")
(require 'org)
(message "Tangling didc.org...")
(setq org-confirm-babel-evaluate nil)
(org-babel-tangle-file "didc.org")
(message "didc has been tangled!")
