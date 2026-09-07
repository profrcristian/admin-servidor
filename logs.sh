#!/bin/bash

CLAVE="clave123"
BD="proyecto"

registrar_log_texto() {
    read -p "Acción a registrar: " accion
    echo "$(whoami) - $accion - $(date)" >> logs.txt
}

registrar_log_mysql() {
    read -p "Acción a registrar: " accion
    mysql -u root -p"$CLAVE" "$BD" \
        -e "INSERT INTO logs (usuario, accion) VALUES ('$(whoami)', '$accion');"
}

echo "--- Gestión de Logs del Sistema ---"
echo "1) Registrar en texto plano"
echo "2) Registrar en MySQL"
echo "3) Registrar en ambos"
echo "4) Volver"
read -p "Opción: " op
case $op in
    1) registrar_log_texto ;;
    2) registrar_log_mysql ;;
    3) registrar_log_texto; registrar_log_mysql ;;
    4) exit 0 ;;
    *) echo "Opción inválida" ;;
esac
