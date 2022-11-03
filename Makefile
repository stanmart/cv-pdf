SUBDIRS = en hu

dist : $(SUBDIRS)
	mkdir -p dist
	touch dist/.nojekyll
	cp $(addsuffix /out/*.pdf,$(SUBDIRS)) dist/

$(SUBDIRS) :
	$(MAKE) -C $@

.PHONY: dist $(SUBDIRS)
