.PHONY: all compile watch clean

all: compile

compile:
	@bash compile.sh

watch:
	@echo "👀 Modo observación activo. Presiona Ctrl+C para salir."
	@docker run --rm -it -v "$$(pwd)":/workdir -w /workdir texlive/texlive:latest latexmk -pvc -pdf -interaction=nonstopmode tesis.tex

clean:
	@bash clean.sh
