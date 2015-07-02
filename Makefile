PACKAGES = $(shell ls rules/ | cut -f 1 -d .)

all: $(PACKAGES)

include ./Makefile.deps
