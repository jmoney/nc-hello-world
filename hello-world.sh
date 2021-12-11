#!/bin/sh

APP_PORT="${PORT:-8080}"
while true;
do
    ./response.sh | nc -l -p ${APP_PORT}
done