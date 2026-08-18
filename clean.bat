@echo off
echo Limpiando archivos auxiliares de compilacion...
del /q *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.run.xml *.toc *.synctex.gz 2>nul
del /q capitulos\*.aux 2>nul
echo Limpieza finalizada con exito.
