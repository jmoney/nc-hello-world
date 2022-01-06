#!/bin/sh

set -x

content="Hello World!\n${TEXT}\n$(date)"
echo "HTTP/1.1 200 OK\nConnection: close\nContent-Type: text/plain\nContent-Length: $((${#content}))\n\n${content}"