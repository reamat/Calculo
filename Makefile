#Este trabalho está licenciado sob a Licença Creative Commons Atribuição-CompartilhaIgual 3.0 Não Adaptada. Para ver uma cópia desta licença, visite http://creativecommons.org/licenses/by-sa/3.0/ ou envie uma carta para Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

########################################
#
# ATENÇÃO
#
# POR SEGURANÇA, NÃO EDITE ESTE ARQUIVO.
#
########################################


########################################
# FORMATO LIVRO PDF
########################################

pdf: main.tex
	pdflatex main
	bibtex main
	makeindex main
	pdflatex main
	pdflatex main


########################################
# FORMATO LIVRO DVI
########################################

dvi: main.tex
	latex main
	bibtex main
	makeindex main
	latex main
	latex main


########################################
# FORMATO HTML
########################################

html: main.tex
	mkdir -p ./html
	rm -f ./html/*
	latex main
	bibtex main
	latex main
	latex main
	mk4ht htlatex main "myconfig,3,notoc*" "" "-d./html/"




clean: 
	rm -rf */*/*.aux */*/*.log */*/*.out */*/*.toc */*/*.bbl */*/*.idx */*/*.ilg */*/*.ind */*/*.blg */*/*.backup 
	rm -rf */*.aux */*.log */*.out */*.toc */*.bbl */*.idx */*.ilg */*.ind */*.blg */*.backup 
	rm -f *.aux *.log *.out *.toc *.bbl *.idx *.ilg *.ind *.blg *.backup 

