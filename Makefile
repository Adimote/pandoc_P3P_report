PANDOCOPTS = -f markdown+tex_math_dollars 

*.tex:
	mkdir -p output
	# The building process involves 2 steps.
	# Step 1: insert all special variables into the templates
	cd latex; pandoc ../title.md -s -N $(PANDOCOPTS) --template=Title.tex  -o ../output/Title.tex
	cd latex; pandoc ../title.md -s -N $(PANDOCOPTS) --template=Definitions.tex  -o ../output/Definitions.tex
	cd latex; pandoc ../content.md -s -N $(PANDOCOPTS) --template=Content.tex -o ../output/Content.tex
	cd latex; pandoc ../conclusions.md -s -N $(PANDOCOPTS) --template=Conclusions.tex -o ../output/Conclusions.tex
	cd latex; pandoc ../appendix.md -s -N $(PANDOCOPTS) --template=Appendix.tex -o ../output/Appendix.tex
	# Step 2: Compile the latex files
	cd output; xelatex Title.tex

# Install the .cls file into the machine
install:
	# Copy the class file to the texmf directory
	# TODO: implement Windows
	cp -r latex/tex ~/texmf/

clean:
	cd latex; rm -f *.aux *.toc *.log *.lol *.pdf *.out *.lof *.lot
	cd output; rm -f *
