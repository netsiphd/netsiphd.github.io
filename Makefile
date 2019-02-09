## Markdown extension (e.g. md, markdown, mdown).
MEXT = md
READMES = README.md

## All markdown files in the working directory
SRC = $(filter-out $(READMES),$(wildcard *.$(MEXT)))

HTML=$(SRC:.md=.html)

all:	$(HTML)

html:	clean $(HTML)

%.html:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block+smart -w html5 --template=template/tufte.html5 --css=css/tufte.css --css=css/latex.css  --css=css/pandoc.css --css=css/pandoc-solarized.css --css=css/tufte-extra.css --section-divs --mathjax -o $@ $<

clean:
	rm -f $(SRC:.md=.html)

.PHONY: clean
