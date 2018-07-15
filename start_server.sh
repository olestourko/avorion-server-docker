#!/bin/bash
GALAXY_NAME=$1
ADMIN_ID=$2
docker run -it -p 27000:27000/udp -p 27000:27000/tcp -p 27003:27003/udp -p 27020:27020/udp -p 27021:27021/udp -v $(pwd):/home/steam/avorion-server/shared avorion-dedicated /home/steam/avorion-server/shared/scripts/start_server.sh $GALAXY_NAME $ADMIN_ID
