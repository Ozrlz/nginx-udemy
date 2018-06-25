#! /bin/bash

CONT_SERVER=4
BASE_PORT=1000

for ((i=0; i<${CONT_SERVER}; i++)) do
    echo "This is the server #${i}" > server_file${i}.txt
    php -S $(hostname -i):${BASE_PORT}${i} server_file${i}.txt &
done
