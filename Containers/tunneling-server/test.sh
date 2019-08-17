#!/bin/bash
docker rm -f tunneling-server
docker build --tag tunneling-server:latest .
docker run -d --name tunneling-server \
 -e PUBLICKEY="<changethis>"
 -p 2000:22 \
 -p 8999:8999 \
tunneling-server:latest
docker logs -f tunneling-server
