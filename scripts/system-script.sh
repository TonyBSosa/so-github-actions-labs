#!/usr/bin/env bash
set -euo pipefail

echo "=== Linux System Automation Script ==="

WORKSPACE="${GITHUB_WORKSPACE:-$(pwd)}"
REPORT="$WORKSPACE/system-report-linux.txt"

{
  echo "Usuario actual: $(whoami)"
  echo "Directorio actual: $(pwd)"
  echo "Fecha/Hora: $(date)"
  echo

  echo "1) Variable de entorno recibida del workflow:"
  echo "   HOST_ENV_MESSAGE=${HOST_ENV_MESSAGE:-no definida}"
  echo

  echo "2) Creando y leyendo archivo de ejemplo..."
  INPUT_FILE="$WORKSPACE/input-linux.txt"
  echo "Hola, este archivo fue creado por system-script.sh" > "$INPUT_FILE"
  echo "Contenido de $INPUT_FILE:"
  cat "$INPUT_FILE"
  echo

  echo "3) Cambiando permisos de un archivo (chmod)..."
  SECRET_FILE="$WORKSPACE/secret-linux.txt"
  touch "$SECRET_FILE"
  chmod 600 "$SECRET_FILE"
  ls -l "$SECRET_FILE"
  echo

  echo "4) Creando un proceso en segundo plano (sleep 5 &)..."
  (sleep 5 & echo "PID del proceso en background: $!" )
  echo

  echo "5) Top de procesos (ps aux | head -5):"
  ps aux | head -5
  echo
} > "$REPORT"

echo "Reporte generado en: $REPORT"
