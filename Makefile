SUBDIRS = eng

dist : $(SUBDIRS)
	mkdir -p dist
	rm dist/*
	cp eng/out/*.pdf dist/

$(SUBDIRS) :
	$(MAKE) -C $@

.PHONY: dist $(SUBDIRS)
