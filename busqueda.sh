#!/bin/bash

path="/var/log/"
w="Braulio_Hernandez"

cd "$path"
for file in messages*
do
#       echo "$file"
#       cat "$file | grep -i "$w"
        grep -Ril "$w" "$file"
done
