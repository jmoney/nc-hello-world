#!/bin/sh

while true
do
    echo -e "HTTP/1.1 200 OK\n\nHello World!\n${TEXT}\n$(date)" | nc -l -k -p 8080 -q 1;
done