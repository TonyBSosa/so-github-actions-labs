#!/usr/bin/env bash
set -e

REPORT="security-permissions-report.txt"

echo "==== REPORTE DE PERMISOS INSEGUROS ====" > "$REPORT"
echo "Fecha: $(date)" >> "$REPORT"
echo "" >> "$REPORT"
echo "Archivos world-writable (permiso de escritura para 'others'):" >> "$REPORT"
echo "" >> "$REPORT"

# Buscamos archivos con permisos de escritura para others,
# excluyendo .git y node_modules para que no salga demasiado ruido
find . \
  -path "./.git" -prune -o \
  -path "./so-cicd-app/node_modules" -prune -o \
  -type f -perm -0002 -print >> "$REPORT" || true

echo "" >> "$REPORT"
echo "Fin del reporte de permisos." >> "$REPORT"

# Mostramos el contenido en el log del workflow
cat "$REPORT"
