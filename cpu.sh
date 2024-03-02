#!/bin/bash

while true; do
    clear  #
    echo "Rendimiento CPU:"
    top -bn1 | grep "Cpu(s)" | sed "s/., \([0-9.]\)% id.*/\1/" | awk '{print "Uso de CPU: " 100 - $1 "%"}'
    echo "Uso RAM:"
    free -m | grep "Mem:" | awk '{print "Memoria Utilizada: " $3 "MB de " $2 "MB (" int(($3/$2)*100) "%)"}'

    echo "Uso almacenamiento:"
    df -h | grep "/dev/sda1" | awk '{print "Almacenamiento utilizado: " $3 " de " $2 " (" $5 " uso)"}'
    sleep 30
done
