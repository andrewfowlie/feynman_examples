`feynman_examples`
================

`LaTeX` examples of Feynman diagrams drawn with `feynmf`. Drawing nice Feynamn diagrams is time-consuming, so I am starting this
collection, currently including,

    B_s -> \mu \mu (SM & SUSY)
    B_s - > X_s \gamma  (SM & SUSY)
    B_u -> \tau \nu  (SM & SUSY)
    \delta M_{B_s}  (SM & SUSY)
    supersymmetric golden decay
    Higgs decay (SM)
    Higgs production (SM)
    \delta a_mu (magnetic moment of the muon) (SM & SUSY)
    Dark matter annihlation (SUSY)
    supersymmetric tri-lepton signature
  

Viewing
=======

To view the diagrams, simply open `Example.pdf`. To save the `LaTeX`, click on the paperclips.

Contributing
============
To contribute, 

1. Make your own `MyOwnDiagram.tex` file of `feynmf` `LaTeX` commands, containing no preamble etc. 
2. Edit `Example.tex`, so that it includes

        \example{MyOwnDiagram.tex}
at an appropriate place. The `example` macro takes care of typesetting the code alongside the diagram etc.
3.  Remake the `Example.pdf`, with:

        pdflatex Example.tex
        for f in *.mp; 
        do 
        echo $f
        if [ "$f" = "feynmp.mp" ] ; then continue; echo "skipping"; fi
        g="\`echo "$f" | cut -d'.' -f1\`.t1"
        if [ ! -f $g ]; then
        mpost $f
        fi
        done
        pdflatex Example.tex
        pdflatex Example.tex
4. Push the new `Example.tex`, `Example.pdf` and `MyOwnDiagram.tex`.
