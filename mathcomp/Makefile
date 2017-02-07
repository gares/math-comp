H=@

ifeq "$(COQBIN)" ""
COQBIN=$(dir $(shell which coqtop))/
endif

# this sets variable V
include ssreflect/Makefile.detect-coq-version
# this defined coqmakefile
include ssreflect/Makefile.coq-makefile

# Override COQDEP to find only the "right" copy .ml files
ifeq "$V" "v8.4"
COQDEP=../etc/utils/ssrcoqdep
else
COQDEP=$(COQBIN)coqdep
endif

.DEFAULT_GOAL := all
.PHONY: all .merlin *.vo *.vio clean

coqmake = $(MAKE) --no-print-directory \
                  -f Makefile.coq $* \
                  COQDEP='$(COQDEP) -exclude-dir plugin -c'

all: Makefile.coq
	$(H)$(coqmake) $@
.merlin: Makefile.coq
	$(H)$(coqmake) $@
%.vo: Makefile.coq
	$(H)$(coqmake) $@
%.vio: Makefile.coq
	$(H)$(coqmake) $@

clean:
	$(H)$(MAKE) --no-print-directory -f Makefile.coq clean
	$(H)rm -f Makefile.coq


Makefile.coq: Make
	$(H)$(call coqmakefile,ssreflect)

