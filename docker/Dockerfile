FROM alpine:3.18

# Instalamos herramientas básicas para ver recursos
RUN apk add --no-cache procps

# El contenedor:
#  1) Muestra un saludo
#  2) Muestra una variable de entorno enviada desde el host
#  3) Muestra uso de CPU y memoria
#  4) Escribe un archivo en un volumen compartido /data
CMD sh -c '\
  echo "=== Hola desde dentro del contenedor ===" && \
  echo "Mensaje recibido desde el host: $HOST_MESSAGE" && \
  echo "=== Uso de recursos dentro del contenedor (top -b -n1 | head -5) ===" && \
  top -b -n 1 | head -5 && \
  echo "Hola host, te escribe el contenedor" > /data/mensaje-desde-contenedor.txt \
'
