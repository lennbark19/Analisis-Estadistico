# Compilación de la Tesis con Docker

Este proyecto está configurado para compilarse dentro de un contenedor Docker utilizando `texlive/texlive:latest` (que incluye LaTeX completo, Biber, paquetes y `latexmk`), sin necesidad de instalar TeX Live ni dependencias en tu máquina local.

---

## 🚀 Formas de Compilar

Tienes varias opciones sencillas para compilar según lo que prefieras:

### Opción 1: Con el script directo (Recomendada)
```bash
./compile.sh
```

### Opción 2: Con Docker Compose
```bash
docker compose run --rm compile
```

### Opción 3: Con Make
```bash
make
```

### Opción 4: Comando directo de Docker
```bash
docker run --rm -v "$(pwd)":/workdir -w /workdir texlive/texlive:latest latexmk -pdf -interaction=nonstopmode tesis.tex
```

---

## 👀 Modo Observación / Auto-compilación en Vivo (Watch Mode)

Si estás editando el documento y quieres que se recompile automáticamente cada vez que guardas un cambio:

```bash
docker compose run --rm watch
# O también:
make watch
```
*(Presiona `Ctrl + C` para detenerlo).*

---

## 🧹 Limpiar Archivos Temporales (.aux, .log, .toc, etc.)

Para limpiar todos los archivos generados por la compilación:

```bash
./clean.sh
# O también:
make clean
```
