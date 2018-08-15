rm *.eps
for i in *.tex; do latex  $i; done;
for i in *.dvi; do dvips  $i; done;
for i in *.ps;  do ps2eps $i; done;

