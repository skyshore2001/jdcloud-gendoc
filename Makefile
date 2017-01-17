SRC=jdcloud-gendoc.php
DOC=$(SRC:.php=.html)

all: README.md $(DOC)

refdoc: $(DOC)

clean-refdoc:
	-rm -rf $(DOC)

clean:
	-rm -rf README.md $(REL) $(DOC)

README.md: $(SRC) tool/gen-readme.pl
	perl tool/gen-readme.pl $< > $@

$(DOC): $(SRC)
	php jdcloud-gendoc.php $^ > $@

