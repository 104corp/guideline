#!/usr/bin/make -f

.PHONY: svg clean

svg:
	find . -name *.tex -print | xargs -I {} ./scripts/svg {}
	make clean

clean:
	find . -name *.aux -exec rm -f {} \;
	find . -name *.log -exec rm -f {} \;
	find . -name *.pdf -exec rm -f {} \;
	find . -name *.synctex.gz -exec rm -f {} \;
