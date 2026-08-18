#!/usr/bin/env bash

echo "🧹 Limpiando archivos temporales de compilación..."
rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.run.xml *.toc *.synctex.gz capitulos/*.aux
echo "✨ Limpieza completada."
