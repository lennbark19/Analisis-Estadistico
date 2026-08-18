#!/usr/bin/env bash

echo "🧹 Limpiando archivos temporales de compilación..."
docker run --rm -v "$(pwd)":/workdir -w /workdir texlive/texlive:latest latexmk -c tesis.tex
rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.run.xml *.toc capitulos/*.aux
echo "✨ Limpieza completada."
