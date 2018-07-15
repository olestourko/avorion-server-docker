#!/bin/bash
GALAXY_NAME=$1
ADMIN_ID=$2
# SERVER_PATHNAME and GALAXY_PATH are set in the Dockerfile
sh ${SERVER_PATHNAME} --galaxy-name $GALAXY_NAME --admin $ADMIN_ID --datapath $GALAXY_PATH
