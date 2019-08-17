#!/bin/bash
set -e 
echo $PUBLICKEY | base64 -d > ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
exec "$@"
