.PHONY: all clean view

TEX     = main.tex
OUT     = main.pdf
LATEXMK = latexmk -xelatex -interaction=nonstopmode -halt-on-error

all: $(OUT)

$(OUT): $(TEX)
	$(LATEXMK) $(TEX)

clean:
	$(LATEXMK) -C
	rm -f *.idx *.ilg *.ind *.aux *.log *.toc *.out *.fls *.fdb_latexmk

view: $(OUT)
	@echo "PDF ready: $(OUT)"
	@command -v xdg-open >/dev/null && xdg-open $(OUT) || true
