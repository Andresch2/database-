#!/bin/bash

# Define la fecha y hora actual para el nombre del archivo
FECHA=$(date +%Y-%m-%d_%H-%M)
# Define la ruta donde se guardará el backup (carpeta 'backups' en tu inicio)
DESTINO=~/backups

# Crea la carpeta de destino si no existe
mkdir -p $DESTINO

# Ejecuta el respaldo de la base de datos 'pagila' usando pg_dump
# Nota: Asegúrate de tener acceso al puerto 5433 y al host indicados
pg_dump -p 5433 -h /tmp pagila > $DESTINO/pagila_$FECHA.sql

# Muestra un mensaje de confirmación
echo "Backup realizado: $FECHA"

