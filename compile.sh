#!/usr/bin/env bash
set -e

echo "🚀 Compilando tesis en contenedor Docker..."
docker run --rm -v "$(pwd)":/workdir -w /workdir texlive/texlive:latest latexmk -pdf -interaction=nonstopmode tesis.tex

if [ -f "tesis.pdf" ]; then
    echo "✅ ¡Compilación exitosa! Archivo generado: tesis.pdf"
else
    echo "❌ Error: No se generó el archivo tesis.pdf"
    exit 1
fi
