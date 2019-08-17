#!/bin/bash
set -e
#chmod -R 0600 ~/.ssh
/usr/bin/ssh -v -N -R 0.0.0.0:$SERVICEFORPORT:$SERVICEURL:$SERVICEPORT -o "StrictHostKeyChecking no" root@$SERVERADDR -p$SERVERPORT
#exec "$@"
