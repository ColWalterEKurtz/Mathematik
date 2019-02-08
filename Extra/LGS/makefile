# filename and extensions
FILE     = document
EXT_IN   = tex
EXT_OUT  = pdf
EXT_LOG  = log
EXT_TMP  = tmp
CALC_SRC = aufgaben.m
CALC_OUT = aufgaben.tex

# tools and options
TEX     = pdflatex
BIB     = bibtex
IDX     = makeindex
IFLAGS  =
EYE     = xreader
DEL     = rm -f
REN     = mv -f
CNV     = iconv
CFLAGS  = --from-code ISO_8859-1 --to-code UTF-8

# always create these targets
.PHONY: all clean

# show pdf file
all: $(FILE).$(EXT_OUT)
	$(EYE) $(FILE).$(EXT_OUT)

# calculate
$(CALC_OUT): $(CALC_SRC)
	octave -q $< > $@

# create pdf file from all tex files in the current directory
$(FILE).$(EXT_OUT): *.$(EXT_IN) $(CALC_OUT)
#	$(TEX) $(FILE).$(EXT_IN)
#	$(BIB) $(FILE)
#	$(IDX) $(IFLAGS) $(FILE)
	$(TEX) $(FILE).$(EXT_IN)
	$(TEX) $(FILE).$(EXT_IN)
	$(CNV) $(CFLAGS) $(FILE).$(EXT_LOG) > $(FILE).$(EXT_TMP)
	$(DEL) $(FILE).$(EXT_LOG)
	$(REN) $(FILE).$(EXT_TMP) $(FILE).$(EXT_LOG)

# remove temporary files
clean:
	$(DEL) *.aux *.toc *.lof *.lot *.bbl *.blg *.idx *.ilg *.ind *.log *.thm $(CALC_OUT) $(FILE).$(EXT_OUT)
