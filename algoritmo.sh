#!/bin/sh

echo "Ingrese el número n para generar la serie de Fibonacci:"
read n

if echo "$n" | grep -q '^[0-9][0-9]*$' && [ "$n" -ge 0 ]; then
    :
else
    echo "Por favor, ingrese un numero entero positivo."
    exit 1
fi

fibonacci() {
    num=$1
    if [ "$num" -le 1 ]; then
        echo "$num"
    else
        echo $(( $(fibonacci $(("$num" - 1))) + $(fibonacci $(("$num" - 2))) ))
    fi
}

resultado=$(fibonacci "$n")
echo "El termino $n de la serie de Fibonacci es: $resultado"
