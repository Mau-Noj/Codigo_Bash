#!/bin/bash
# *********************** Este programa crea un archivo de texto con el nombre proporcionado ***********************
# Verifica si se proporciona un nombre de archivo como argumento
# se utuliza [ -z "$1" ] para verificar si el primer argumento es una cadena vacía
# Explicacion del comando [ -z "$1" ]:
# "-z" se utiliza para verificar si la longitud de la cadena es cero
# "$1" es el primer argumento que se pasa al script
# ******************************************************************************************************************

if [ -z "$1" ]; then
  # Imprime un mensaje de alerta en rojo si no se proporciona un nombre de archivo
  echo -e "\e[1;31mError: Debes proporcionar un nombre de archivo.\e[0m"
  exit 1  # Salir del script con un código de error
fi

# Crea un archivo de texto con el nombre proporcionado
touch "$1"

# Mensaje de éxito
echo "Archivo '$1' creado exitosamente."
