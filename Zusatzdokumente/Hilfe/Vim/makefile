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

# filenames and extensions
EXT_IN  = tex
EXT_OUT = pdf
EXT_LOG = log
EXT_TMP = tmp
FILE    = vimhelp

.PHONY: all clean

# show resulting pdf file
all: $(FILE).$(EXT_OUT)
	$(EYE) $(FILE).$(EXT_OUT)

# create pdf file
$(FILE).$(EXT_OUT): *.$(EXT_IN)
#	$(TEX) $(FILE).$(EXT_IN)
#	$(BIB) $(FILE)
#	$(IDX) $(IFLAGS) $(FILE)
	$(TEX) $(FILE).$(EXT_IN)
	$(TEX) $(FILE).$(EXT_IN)
	$(CNV) $(CFLAGS) $(FILE).$(EXT_LOG) > $(FILE).$(EXT_TMP)
	$(DEL) $(FILE).$(EXT_LOG)
	$(REN) $(FILE).$(EXT_TMP) $(FILE).$(EXT_LOG)

# remove files that can be generated
clean:
	$(DEL) *.aux *.toc *.lof *.lot *.bbl *.blg *.idx *.ilg *.ind *.log *.thm $(FILE).$(EXT_OUT)
