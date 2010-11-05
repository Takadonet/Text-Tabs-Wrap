PERL6=perl6
RAKUDO_DIR=<RAKUDO_DIR>

SOURCES= \
    ./lib/Text/Tabs.pm \
    ./lib/Text/Wrap.pm \
    

PIRS=$(SOURCES:.pm=.pir)

all: $(PIRS)

%.pir: %.pm
	$(PERL6) --target=pir --output=$@ $<

clean:
	rm -f $(PIRS)

test: all
	prove -e '$(PERL6)' -r --nocolor t/
