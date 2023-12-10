#!/bin/bash

# Este programa explica como funciona la estructura de control if-else
# La estructura de control if-else se utiliza para tomar decisiones
# La estructura de control if-else se utiliza para ejecutar un bloque de código si una condición es verdadera
# Si la condición es falsa, se ejecuta otro bloque de código
# La estructura de control if-else se utiliza de la siguiente manera:
# if [ condicion ]; then
#   # Bloque de código que se ejecuta si la condición es verdadera
# else
#   # Bloque de código que se ejecuta si la condición es falsa
# fi
# La condición puede ser cualquier comando o expresión que se evalúe como verdadera o falsa
# El comando [ es un alias para el comando test
# El comando test se utiliza para evaluar una expresión
# El comando test devuelve un código de salida de 0 (verdadero) o 1 (falso) dependiendo del resultado de la evaluación
# El comando test se utiliza de la siguiente manera:
# test condicion
# El comando test se puede utilizar de la siguiente manera:
# test condicion && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# [ condicion ] && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# [[ condicion ]] && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( condicion )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 == 1 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 == 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 > 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 < 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 >= 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 <= 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 != 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 == 1 && 2 == 2 )) && echo "Verdadero" || echo "Falso"
# Es posible utilizar los operadores lógicos && (AND), || (OR) y ! (NOT) para combinar expresiones
# El comando test se puede utilizar de la siguiente manera:
# (( 1 == 1 || 2 == 2 )) && echo "Verdadero" || echo "Falso"
# El comando test se puede utilizar de la siguiente manera:
# (( 1 == 1 || 2 == 3 )) && echo "Verdadero" || echo "Falso"
# Es importante notar que los operadores lógicos && (AND), || (OR) y ! (NOT) tienen mayor precedencia que los operadores de comparación
# Una aplicación común de la estructura de control if-else es verificar si un archivo existe

# Primero el usuario debe proporcionar un nombre de archivo como argumento
# se utuliza [ -z "$1" ] para verificar si el primer argumento es una cadena vacía
if [ -z "$1" ]; then
  # Imprime un mensaje de alerta en rojo si no se proporciona un nombre de archivo
  echo -e "\e[1;31mError: Debes proporcionar un nombre de archivo.\e[0m"
  exit 1  # Salir del script con un código de error
fi

# Verifica si el archivo existe
# se utiliza [ -f "$1" ] para verificar si el primer argumento es un archivo regular
if [ -f "$1" ]; then
  # Imprime un mensaje de alerta en rojo si el archivo ya existe
  echo -e "\e[1;31mError: El archivo '$1' ya existe.\e[0m"
  exit 1  # Salir del script con un código de error
fi

# Crea un archivo de texto con el nombre proporcionado
touch "$1"

# Mensaje de éxito
echo "Archivo '$1' creado exitosamente."
