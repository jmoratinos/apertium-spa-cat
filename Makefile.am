###############################################################################
## Makefile for Spanish--Catalan
###############################################################################

LANG1=spa
LANG2=cat

VAR1=#leave empty
VAR2=_valencia_gva
VAR3=_valencia_uni
VAR4=_balear

LANG2C=$(LANG2)$(VAR1)
LANG2V=$(LANG2)$(VAR2)
LANG2U=$(LANG2)$(VAR3)
LANG2B=$(LANG2)$(VAR4)

PREFIX1=$(LANG1)-$(LANG2)
PREFIX1C=$(LANG1)-$(LANG2C)
PREFIX1V=$(LANG1)-$(LANG2V)
PREFIX1G=$(LANG1)-$(LANG2G)
PREFIX1U=$(LANG1)-$(LANG2U)
PREFIX1B=$(LANG1)-$(LANG2B)

PREFIX2=$(LANG2)-$(LANG1)
PREFIX2C=$(LANG2C)-$(LANG1)
PREFIX2V=$(LANG2V)-$(LANG1)
PREFIX2G=$(LANG2G)-$(LANG1)
PREFIX2U=$(LANG2U)-$(LANG1)
PREFIX2B=$(LANG2B)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_PREFS = prefs/$(PREFIX1).xml

TARGETS_COMMON =			\
	$(PREFIX1).automorf.bin 	\
	$(PREFIX1).rlx.bin	\
	$(PREFIX2).rlx.bin	\
	$(PREFIX1).prob		 	\
	$(PREFIX1C).autobil.bin 	\
	$(PREFIX1V).autobil.bin 	\
	$(PREFIX1G).autobil.bin 	\
	$(PREFIX1U).autobil.bin 	\
	$(PREFIX1B).autobil.bin 	\
	$(PREFIX1).autolex.bin  \
	$(PREFIX1).biprefs.rlx.bin  \
	$(PREFIX1).top-gva_biprefs.rlx.bin  \
	$(PREFIX1C).autogen.bin 	\
	$(PREFIX1V).autogen.bin 	\
	$(PREFIX1G).autogen.bin 	\
	$(PREFIX1U).autogen.bin 	\
	$(PREFIX1C).autopgen.bin 	\
	$(PREFIX1V).autopgen.bin 	\
	$(PREFIX1G).autopgen.bin 	\
	$(PREFIX1U).autopgen.bin 	\
	$(PREFIX1B).autopgen.bin 	\
	$(PREFIX2).automorf.bin		\
	$(PREFIX2).prob			\
	$(PREFIX2).autobil.bin		\
	$(PREFIX2).autolex.bin  \
	$(PREFIX2).autogen.bin 		\
	$(PREFIX2).autopgen.bin 	\
	$(PREFIX1C).t1x.bin 		\
	$(PREFIX1V).t1x.bin 		\
	$(PREFIX1G).t1x.bin 		\
	$(PREFIX1U).t1x.bin 		\
	$(PREFIX1B).t1x.bin 		\
	$(PREFIX1C).prefs.rlx.bin	\
	$(PREFIX1V).prefs.rlx.bin	\
	$(PREFIX1G).prefs.rlx.bin	\
	$(PREFIX1U).prefs.rlx.bin	\
	$(PREFIX1B).prefs.rlx.bin	\
	$(PREFIX1).pre2017_prefs.rlx.bin \
	prefs/$(PREFIX1).xml

# This include defines goals for install-modes, .deps/.d, autobil.prefixes and .mode files:
@ap_include@


###############################################################################
## Monolingual transducers
###############################################################################

# -------------------
# Spanish analysis:
# -------------------

$(PREFIX1C).automorf.bin: $(AP_SRC1)/$(LANG1).automorf.bin $(PREFIX1C).autobil.bin
	lt-trim $^ $@

$(PREFIX1V).automorf.bin: $(AP_SRC1)/$(LANG1).automorf.bin $(PREFIX1G).autobil.bin
	lt-trim $^ $@

$(PREFIX1G).automorf.bin: $(AP_SRC1)/$(LANG1).automorf.bin $(PREFIX1G).autobil.bin
	lt-trim $^ $@

$(PREFIX1U).automorf.bin: $(AP_SRC1)/$(LANG1).automorf.bin $(PREFIX1G).autobil.bin
	lt-trim $^ $@

$(PREFIX1B).automorf.bin: $(AP_SRC1)/$(LANG1).automorf.bin $(PREFIX1B).autobil.bin
	lt-trim $^ $@

# -------------------
# Spanish generation:
# ---------------------

$(PREFIX2).autogen.bin: $(AP_SRC1)/$(LANG1).autogen.bin
	cp $< $@

$(PREFIX2).autopgen.bin: $(AP_SRC1)/$(LANG1).autopgen.bin
	cp $< $@

# -------------------
# Catalan analysis:
# -------------------

$(PREFIX2).automorf.bin: $(AP_SRC2)/$(LANG2).automorf.bin $(PREFIX2).autobil.bin
	lt-trim $^ $@

# -------------------
# Catalan generation:
# ---------------------

$(PREFIX1C).autogen.bin: $(AP_SRC2)/$(LANG2C).autogen.bin
	cp $< $@

$(PREFIX1V).autogen.bin: $(AP_SRC2)/$(LANG2V).autogen.bin
	cp $< $@

$(PREFIX1G).autogen.bin: $(AP_SRC2)/$(LANG2G).autogen.bin
	cp $< $@

$(PREFIX1U).autogen.bin: $(AP_SRC2)/$(LANG2U).autogen.bin
	cp $< $@

$(PREFIX1B).autogen.bin: $(AP_SRC2)/$(LANG2B).autogen.bin
	cp $< $@

$(PREFIX1C).autopgen.bin: $(AP_SRC2)/$(LANG2C).autopgen.bin
	cp $< $@

$(PREFIX1V).autopgen.bin: $(AP_SRC2)/$(LANG2V).autopgen.bin
	cp $< $@

$(PREFIX1G).autopgen.bin: $(AP_SRC2)/$(LANG2G).autopgen.bin
	cp $< $@

$(PREFIX1U).autopgen.bin: $(AP_SRC2)/$(LANG2U).autopgen.bin
	cp $< $@

$(PREFIX1B).autopgen.bin: $(AP_SRC2)/$(LANG2B).autopgen.bin
	cp $< $@

###############################################################################
## Variant preferences
###############################################################################

$(PREFIX1).top-gva_biprefs.rlx.bin: $(BASENAME).$(PREFIX1).top-gva_biprefs.rlx
	cg-comp $< $@

$(PREFIX1).biprefs.rlx.bin: $(BASENAME).$(PREFIX1).biprefs.rlx
	cg-comp $< $@

$(PREFIX1).pre2017_prefs.rlx.bin: $(AP_SRC2)/$(LANG2).pre2017_prefs.rlx.bin
	cp $< $@

$(PREFIX1C).prefs.rlx.bin: $(AP_SRC2)/$(LANG2C).prefs.rlx.bin
	cp $< $@

$(PREFIX1V).prefs.rlx.bin: $(AP_SRC2)/$(LANG2V).prefs.rlx.bin
	cp $< $@

$(PREFIX1G).prefs.rlx.bin: $(AP_SRC2)/$(LANG2G).prefs.rlx.bin
	cp $< $@

$(PREFIX1U).prefs.rlx.bin: $(AP_SRC2)/$(LANG2U).prefs.rlx.bin
	cp $< $@
>>>>>>> 0085632c4da45444d3867137642bdd64516fb25e

###############################################################################
## Disambiguation models
###############################################################################

$(PREFIX1).prob: $(AP_SRC1)/$(LANG1).prob
	cp $< $@

$(PREFIX1).rlx.bin: $(AP_SRC1)/apertium-$(LANG1).$(LANG1).rlx
	cg-comp $< $@

$(PREFIX2).prob: $(AP_SRC2)/$(LANG2).prob
	cp $< $@

$(PREFIX2).rlx.bin: $(AP_SRC2)/apertium-$(LANG2).$(LANG2).rlx
	cg-comp $< $@


###############################################################################
## Bilingual dictionaries
###############################################################################

.deps/$(BASENAME).$(PREFIX1).dix: $(BASENAME).$(PREFIX1).metadix .deps/.d
	python3 convert-metadix-dix.py $< $@ 
	apertium-validate-dictionary $@

.deps/$(PREFIX1).dix: .deps/$(BASENAME).$(PREFIX1).dix
	apertium-translate-to-default-equivalent $< $@

.deps/$(PREFIX1).cat.dix: .deps/$(PREFIX1).dix
	apertium-genvrdix cat $< >$@

.deps/$(PREFIX1).val.dix: .deps/$(PREFIX1).dix
	apertium-genvrdix val_gva $< >$@

.deps/$(PREFIX1).val_gva.dix: .deps/$(PREFIX1).dix
	apertium-genvrdix val_gva $< >$@

.deps/$(PREFIX1).val_uni.dix: .deps/$(PREFIX1).dix
	apertium-genvrdix val_uni $< >$@

.deps/$(PREFIX1).bal.dix: .deps/$(PREFIX1).dix
	apertium-genvrdix bal $< >$@

$(PREFIX1C).autobil.bin: .deps/$(PREFIX1).cat.dix
	apertium-validate-dictionary $<
	lt-comp --var-right=cat lr $< $@

$(PREFIX1V).autobil.bin: .deps/$(PREFIX1).val_gva.dix
	apertium-validate-dictionary $<
	lt-comp --var-right=val_gva lr $< $@

$(PREFIX1G).autobil.bin: .deps/$(PREFIX1).val_gva.dix
	apertium-validate-dictionary $<
	lt-comp --var-right=val_gva lr $< $@

$(PREFIX1U).autobil.bin: .deps/$(PREFIX1).val_uni.dix
	apertium-validate-dictionary $<
	lt-comp --var-right=val_uni lr $< $@

$(PREFIX1B).autobil.bin: .deps/$(PREFIX1).bal.dix
	apertium-validate-dictionary $<
	lt-comp --var-right=bal lr $< $@

$(PREFIX2).autobil.bin: .deps/$(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $<
	lt-comp rl $< $@

###############################################################################
## Lexical selection rules
###############################################################################

$(PREFIX1).autolex.bin: $(BASENAME).$(PREFIX1).lrx
	apertium-validate-lrx $<
	lrx-comp $< $@

$(PREFIX2).autolex.bin: $(BASENAME).$(PREFIX2).lrx
	apertium-validate-lrx $<
	lrx-comp $< $@

###############################################################################
## Structural transfer rules
###############################################################################

$(PREFIX1C).t1x.bin: $(PREFIX1C).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX1V).t1x.bin: $(PREFIX1V).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX1G).t1x.bin: $(PREFIX1G).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX1U).t1x.bin: $(PREFIX1U).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

$(PREFIX1B).t1x.bin: $(PREFIX1B).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

.deps/$(BASENAME).$(PREFIX1).cat.t1x: $(BASENAME).$(PREFIX1).t1x
	python3 gent1x.py cat $< >$@

.deps/$(BASENAME).$(PREFIX1).val.t1x: $(BASENAME).$(PREFIX1).t1x
	python3 gent1x.py val_gva $< >$@

.deps/$(BASENAME).$(PREFIX1).val_gva.t1x: $(BASENAME).$(PREFIX1).t1x
	python3 gent1x.py val_gva $< >$@

.deps/$(BASENAME).$(PREFIX1).val_uni.t1x: $(BASENAME).$(PREFIX1).t1x
	python3 gent1x.py val_uni $< >$@

.deps/$(BASENAME).$(PREFIX1).bal.t1x: $(BASENAME).$(PREFIX1).t1x
	python3 gent1x.py bal $< >$@

$(PREFIX1C).t1x: .deps/$(BASENAME).$(PREFIX1).cat.t1x
	xsltproc --stringparam alt cat alt.xsl $< >$@

$(PREFIX1V).t1x: .deps/$(BASENAME).$(PREFIX1).val.t1x
	xsltproc --stringparam alt val_gva alt.xsl $< >$@

$(PREFIX1G).t1x: .deps/$(BASENAME).$(PREFIX1).val_gva.t1x
	xsltproc --stringparam alt val_gva alt.xsl $< >$@

$(PREFIX1U).t1x: .deps/$(BASENAME).$(PREFIX1).val_uni.t1x
	xsltproc --stringparam alt val_uni alt.xsl $< >$@

$(PREFIX1B).t1x: .deps/$(BASENAME).$(PREFIX1).bal.t1x
	xsltproc --stringparam alt bal alt.xsl $< >$@

$(PREFIX2).t1x.bin: $(BASENAME).$(PREFIX2).t1x
	apertium-validate-transfer $<
	apertium-preprocess-transfer $< $@

###############################################################################
## Preferences
###############################################################################

prefs/$(LANG2).preferences.xml: $(AP_SRC2)/$(LANG2).preferences.xml
	$(MKDIR_P) prefs
	cp $< $@

define mergePrefs =
$(MKDIR_P) prefs
echo '<preferences>' >$@.tmp
for f in $^; do xmllint --xpath '/preferences/preference' "$$f"; done >>$@.tmp
echo '</preferences>' >>$@.tmp
mv $@.tmp $@
endef

prefs/$(PREFIX1).xml: prefs/$(LANG2).preferences.xml $(PREFIX1).preferences.xml
		$(mergePrefs)


###############################################################################
## Distribution
###############################################################################

EXTRA_DIST=									\
		$(BASENAME).$(PREFIX1).lrx	\
		$(BASENAME).$(PREFIX2).lrx	\
		$(BASENAME).$(PREFIX1).metadix 			\
		$(BASENAME).$(PREFIX1).metadix 			\
		$(PREFIX1C).t1x 	\
		$(PREFIX1V).t1x 	\
		$(PREFIX1G).t1x 	\
		$(PREFIX1U).t1x 	\
		$(PREFIX1B).t1x 	\
		$(BASENAME).$(PREFIX2).t1x 			\
		modes.xml 							\
		alt.xsl 		\
		$(PREFIX1).preferences.xml


###############################################################################
## Installation
###############################################################################

apertium_spa_catdir=$(prefix)/share/apertium/$(BASENAME)/

# Files which should be installed to $(prefix)/share/apertium/$(BASENAME)/:
apertium_spa_cat_DATA=				\
	$(TARGETS_COMMON)				\
	$(BASENAME).$(PREFIX1).arx          \
	$(BASENAME).$(PREFIX2).arx          \
	$(PREFIX1C).t1x			\
	$(PREFIX1V).t1x			\
	$(PREFIX1U).t1x			\
	$(PREFIX1B).t1x			\
	$(BASENAME).$(PREFIX2).t1x		

# All modes are created by the same goal, listing several will just give problems with make -j2
noinst_DATA=modes/$(PREFIX1).mode $(TARGETS_PREFS)

install-data-local: install-modes
	$(MKDIR_P) $(DESTDIR)$(apertium_modesdir)/../prefs
	$(INSTALL_DATA) $(TARGETS_PREFS) $(DESTDIR)$(apertium_modesdir)/../prefs


###############################################################################
## Cleanup
###############################################################################

CLEANFILES = $(TARGETS_COMMON)
clean-local:
	-rm -rf .deps modes


###############################################################################
## Test
###############################################################################

test: all
	apertium-regtest test
