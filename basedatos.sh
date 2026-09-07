#!/bin/bash

CLAVE="clave123"
BD="proyecto"

ver_contenido_bd() {
    read -p "Tabla a consultar: " tabla
    mysql -u root -p"$CLAVE" "$BD" -e "SELECT * FROM $tabla;"
}

exportar_bd_manual() {
    fecha=$(date +%Y%m%d_%H%M%S)
    mysqldump -u root -p"$CLAVE" "$BD" > "export_bd_${fecha}.sql"
}

echo "--- Gestión de Base de Datos ---"
echo "1) Ver contenido de una tabla"
echo "2) Exportar base de datos (mysqldump)"
echo "3) Volver"
read -p "Opción: " op

case $op in
    1) ver_contenido_bd ;;
    2) exportar_bd_manual ;;
    3) exit 0 ;;
    *) echo "Opción inválida" ;;
esac
