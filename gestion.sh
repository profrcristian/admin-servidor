#!/bin/bash
# Menú principal — llama a cada módulo como script aparte (bash archivo.sh).

# Nota: también se podría hacer con "source archivo.sh" para compartir variables
# en un mismo proceso, pero eso no se vio en clase, así que cada módulo va por separado.

menu() {
    echo "Menú de Gestión del Servidor"
    echo "1. Usuarios"
    echo "2. Grupos"
    echo "3. Respaldos"
    echo "4. Redes"
    echo "5. Firewall"
    echo "6. Base de datos"
    echo "7. Logs del sistema"
    echo "8. Salir"
    read -p "Opción: " opcion

    case $opcion in
        1) ./usuarios.sh ;;
        2) ./grupos.sh ;;
        3) ./respaldos.sh ;;
        4) ./redes.sh ;;
        5) ./firewall.sh ;;
        6) ./basedatos.sh ;;
        7) ./logs.sh ;;
        8) exit 0 ;;
        *) echo "Opción inválida" ;;
    esac
}

while true; do
    menu
done
