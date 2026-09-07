#!/bin/bash

asignar_grupo_secundario() {
    read -p "Usuario: " usuario
    read -p "Grupo a asignar (secundario): " grupo
    sudo usermod -aG "$grupo" "$usuario"
}

sacar_de_grupo() {
    read -p "Usuario: " usuario
    read -p "Grupo del que sacarlo: " grupo
    sudo gpasswd -d "$usuario" "$grupo"
}

echo "--- Gestión de Grupos ---"
echo "1) Asignar grupo secundario"
echo "2) Sacar usuario de un grupo"
echo "3) Volver"
read -p "Opción: " op

case $op in
    1) asignar_grupo_secundario ;;
    2) sacar_de_grupo ;;
    3) exit 0 ;;
    *) echo "Opción inválida" ;;
esac
