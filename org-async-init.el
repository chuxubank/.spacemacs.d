(let ((default-directory  "~/.spacemacs/elpa/26.3/develop/"))
  (normal-top-level-add-subdirs-to-load-path))
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(require 'org)
(require 'ox)
(require 'ox-beamer)
(require 'ox-latex)
(require 'cl)
(setq org-export-async-debug t)

(require 'org-ref)

(setq org-export-with-toc nil)
(setq org-latex-compiler "xelatex")
(setq org-latex-packages-alist
      '(("" "ctex" t ("xelatex"))
        ("" "enumitem" t ("xelatex"))
        ("left=2.5cm, right=2.5cm, top=2cm, bottom=2cm" "geometry" t ("xelatex"))))
(setq org-latex-image-default-width ".6\\linewidth")

(require 'custom)
(custom-set-variables
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t nil)
     ("" "grffile" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "textcomp" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil)
     ("colorlinks=true" "hyperref" nil nil)))))
