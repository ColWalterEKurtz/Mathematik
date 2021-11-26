## Tools und deren Optionen
TEX     = pdflatex
IDX     = makeindex
IFLAGS  = 
EYE     = xreader
DEL     = rm -f
REN     = mv -f
CNV     = iconv
CFLAGS  = --from-code ISO_8859-1 --to-code UTF-8

## Dateinamen und -endungen
EXT_IN  = tex
EXT_OUT = pdf
EXT_LOG = log
EXT_TMP = tmp
FILE    = formeln

.PHONY: all clean

## pdf-Datei anzeigen
all: $(FILE).$(EXT_OUT)
	@$(EYE) $(FILE).$(EXT_OUT)

## pdf-Datei erzeugen
$(FILE).$(EXT_OUT): *.$(EXT_IN)
	@$(TEX) $(FILE).$(EXT_IN)
#	$(IDX) $(IFLAGS) $(FILE)
	@$(TEX) $(FILE).$(EXT_IN) | grep --color "full"
	@$(CNV) $(CFLAGS) $(FILE).$(EXT_LOG) > $(FILE).$(EXT_TMP)
	@$(DEL) $(FILE).$(EXT_LOG)
	@$(REN) $(FILE).$(EXT_TMP) $(FILE).$(EXT_LOG)

## kompilierbare Dateien loeschen
clean:
	$(DEL) *.aux *.toc *.lof *.lot *.bbl *.blg *.idx *.ilg *.ind *.log *.thm *.$(EXT_OUT)

