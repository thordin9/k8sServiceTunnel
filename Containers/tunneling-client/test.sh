#!/bin/bash
docker rm -f tunneling-client
docker build --tag tunneling-client:latest .
docker run -d --name tunneling-client \
-v ~/projects/tunneling-client/id_rsa:/root/.ssh/id_rsa \
-e SERVERADDR="192.168.130.72" \
-e SERVERPORT="2000" \
-e SERVICEURL="example.com" \
-e SERVICEPORT="80" \
-e SERVICEFORPORT="8999" \
tunneling-client:latest
docker logs -f tunneling-client
