#!/bin/bash

ver_puertos() {
    echo "--- Estado del Firewall ---"
    sudo ufw status
}

habilitar_puerto() {
    read -p "Puerto a Habilitar: " puerto
    sudo ufw allow "$puerto"
}

deshabilitar_puerto() {
    read -p "Puerto a Deshabilitar: " puerto
    sudo ufw delete allow "$puerto"
}

echo "--- Gestión de Firewall ---"
echo "1) Ver puertos"
echo "2) Habilitar puerto"
echo "3) Deshabilitar puerto"
echo "4) Volver"
read -p "Opción: " op

case $op in
    1) ver_puertos ;;
    2) habilitar_puerto ;;
    3) deshabilitar_puerto ;;
    4) exit 0 ;;
    *) echo "Opción inválida" ;;
esac
