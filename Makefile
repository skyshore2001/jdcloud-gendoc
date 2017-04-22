SRC=jdcloud-gendoc.php
OUT=$(SRC:.php=.phar)
DOC=$(SRC:.php=.html)

STUB=stub.php
DEP=lib/common.php lib/Parsedown.php

all: README.md $(DOC) $(OUT)

phar: $(OUT)

refdoc: $(DOC)

clean-refdoc:
	-rm -rf $(DOC)

clean:
	-rm -rf README.md $(REL) $(DOC) $(OUT)

README.md: $(SRC) tool/gen-readme.pl
	perl tool/gen-readme.pl $< > $@

$(DOC): $(SRC)
	php jdcloud-gendoc.php $^ > $@

$(OUT): $(SRC) $(DEP) $(STUB)
	@phar.phar pack -f $(OUT) -s $(STUB) -c gz $(SRC) $(DEP)
	@echo === generate phar $(OUT)
