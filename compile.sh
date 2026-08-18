#!/usr/bin/env bash
set -e

echo "🚀 Iniciando compilación de la tesis..."

if command -v latexmk &> /dev/null; then
    echo "📌 Usando latexmk local..."
    latexmk -pdf -interaction=nonstopmode tesis.tex
elif command -v pdflatex &> /dev/null && command -v biber &> /dev/null; then
    echo "📌 Usando pdflatex + biber local..."
    pdflatex -interaction=nonstopmode tesis.tex
    biber tesis
    pdflatex -interaction=nonstopmode tesis.tex
    pdflatex -interaction=nonstopmode tesis.tex
elif command -v docker &> /dev/null; then
    echo "📌 Usando contenedor Docker texlive..."
    docker run --rm -v "$(pwd)":/workdir -w /workdir texlive/texlive:latest latexmk -pdf -interaction=nonstopmode tesis.tex
else
    echo "❌ Error: No se encontró latexmk, pdflatex ni Docker en el sistema."
    exit 1
fi

if [ -f "tesis.pdf" ]; then
    echo "✅ ¡Compilación exitosa! Archivo generado: tesis.pdf"
else
    echo "❌ Error: No se generó el archivo tesis.pdf"
    exit 1
fi
