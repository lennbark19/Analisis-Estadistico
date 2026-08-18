@echo off
echo ========================================================
echo Compilando Tesis (pdflatex + biber + pdflatex + pdflatex)
echo ========================================================

echo [1/4] Ejecutando pdflatex (primera pasada)...
pdflatex -interaction=nonstopmode tesis.tex > nul

echo [2/4] Ejecutando biber para procesar bibliografia...
biber tesis

echo [3/4] Ejecutando pdflatex (segunda pasada)...
pdflatex -interaction=nonstopmode tesis.tex > nul

echo [4/4] Ejecutando pdflatex (tercera pasada para indice y referencias)...
pdflatex -interaction=nonstopmode tesis.tex > nul

if exist tesis.pdf (
    echo ========================================================
    echo Compilacion completada con exito: tesis.pdf generado.
    echo ========================================================
) else (
    echo ========================================================
    echo Error: No se pudo generar tesis.pdf
    echo ========================================================
)
