PANDOCOPTS = -f markdown+tex_math_dollars --biblio=../master.bib

*.pdf:
	cd latex; pandoc ../*.md -s -N $(PANDOCOPTS) --template=Project.tex -o ../output/report.pdf

# Install the .cls file into the machine
install:
	# Copy the class file to the texmf directory
	# TODO: implement Windows
	cp -r latex/tex ~/texmf/

clean:
	cd latex; rm -f *.aux *.toc *.log *.lol *.pdf *.out *.lof *.lot 
	cd output; rm -f *.aux *.toc *.log *.lol *.pdf *.out *.lof *.lot 
