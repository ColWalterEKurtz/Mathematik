# filename and extensions
FILE    := mathematik
EXT_IN  := tex
EXT_OUT := pdf
EXT_LOG := log
EXT_TMP := tmp

# tools and options
TEX     := pdflatex
BIB     := bibtex
IDX     := makeindex
IFLAGS  :=
EYE     := xreader
DEL     := rm -f
REN     := mv -f
CNV     := iconv
CFLAGS  := --from-code ISO_8859-1 --to-code UTF-8

# find all tex files
SOURCES := $(shell find -type 'f' -name '*.tex' | sort)

# find all calculated tex files
EXERCISES := $(shell find -mindepth '2'               \
                          -type     'f'               \
                          -name     '*.tex'           \
                     | grep -v '/Octave/'             \
                     | grep -v '/Zusatzdokumente/'    \
                     | grep -v 'sequence\.tex'        \
                     | sort)

# always create these targets
.PHONY: all clean

# show pdf file
all: $(FILE).$(EXT_OUT)
	$(EYE) $(FILE).$(EXT_OUT)

# create pdf file from all tex files in the current directory
$(FILE).$(EXT_OUT): $(SOURCES)
#	$(TEX) $(FILE).$(EXT_IN)
#	$(BIB) $(FILE)
#	$(IDX) $(IFLAGS) $(FILE)
	$(TEX) $(FILE).$(EXT_IN)
	$(TEX) $(FILE).$(EXT_IN)
	$(CNV) $(CFLAGS) $(FILE).$(EXT_LOG) > $(FILE).$(EXT_TMP)
	$(DEL) $(FILE).$(EXT_LOG)
	$(REN) $(FILE).$(EXT_TMP) $(FILE).$(EXT_LOG)

# calculate exercises
$(EXERCISES): %.tex: %.m
	octave -q $< > $@

# remove temporary files
clean:
	$(DEL) *.aux *.toc *.lof *.lot *.bbl *.blg *.idx *.ilg *.ind *.log *.thm $(FILE).$(EXT_OUT)

