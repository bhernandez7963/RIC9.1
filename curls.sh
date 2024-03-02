#!/bin/bash

while read -r pag; do

    salida=$(curl -s -I "$pag" | grep -i "^HTTP" | tail -1 | awk '{print $2}')


    if [ -z "$salida" ]; then
        echo -e "$pag FAIL"
    else
        echo -e "$pag OK"
    fi
done < paginas
