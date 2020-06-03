(require 'buttercup)
(require 'zimports)

(describe
 "zimports-buffer"
 (it "removes unused imports"
     (expect (with-temp-buffer
               (insert "import sys, os\n\nos.getcwd()\n")
               (zimports-buffer)
               (buffer-substring (point-min) (point-max)))
             :to-equal "import os\n\nos.getcwd()\n")))
