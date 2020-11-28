default: build

build:
	make latex
	make pdf
	make clean

latex:
	@echo "-------------------------"
	@echo "Convert Markdown to LaTeX"
	@echo "-------------------------"
	pandoc -s -o output.latex --biblatex \
		--lua-filter short-captions.lua \
		--template iwi.tex \
		--top-level-division=chapter \
		Arbeit/arbeit.md

pdf:
	@echo "---------------------"
	@echo "Build PDF from LaTeX"
	@echo "---------------------"
	latexmk -pdf output.latex
	cp output.pdf Arbeit/arbeit.pdf

clean:
	@echo "------------------------"
	@echo "Clean up auxiliary files"
	@echo "------------------------"
	latexmk -CA output.latex
