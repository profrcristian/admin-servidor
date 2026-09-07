#!/bin/bash

crear_usuario() {
    read -p "Nombre de usuario a crear: " usuario
    sudo useradd -m "$usuario"
    sudo passwd "$usuario"
}

bloquear_usuario() {
    read -p "Usuario a bloquear: " usuario
    sudo passwd -l "$usuario"
}

desbloquear_usuario() {
    read -p "Usuario a desbloquear: " usuario
    sudo passwd -u "$usuario"
}

echo "--- Gestión de Usuarios ---"
echo "1) Crear usuario"
echo "2) Bloquear usuario"
echo "3) Desbloquear usuario"
echo "4) Volver"
read -p "Opción: " op

case $op in
    1) crear_usuario ;;
    2) bloquear_usuario ;;
    3) desbloquear_usuario ;;
    4) exit 0 ;;
    *) echo "Opción inválida" ;;
esac
