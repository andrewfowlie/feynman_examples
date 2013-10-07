pdflatex Example.tex
for f in *.mp; 
        do 
        if [ "$f" = "feynmp.mp" ] ; then continue; fi
        mpost $f
done
pdflatex Example.tex
pdflatex Example.tex
