#!/bin/sh

while true;
do
    ./response.sh | nc -l -p 8080
done