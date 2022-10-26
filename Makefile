SUBDIRS = eng hu

dist : $(SUBDIRS)
	mkdir -p dist
	cp $(addsuffix /out/*.pdf,$(SUBDIRS)) dist/

$(SUBDIRS) :
	$(MAKE) -C $@

.PHONY: dist $(SUBDIRS)
