#!/bin/bash

# Use of docker-compose or docker compose
DOCKERCOMPOSE=docker-compose
if !(type docker-compose) ; then
    DOCKERCOMPOSE='docker compose'
    echo "Will use docker compose to replace docker-compose command."
fi

# Update the stack
echo 'Updating configuration files'
echo '============================'
git pull https://github.com/SergeBregliano/docker-portainer-agent.git main
echo ''

# Update images
echo 'Downloading images'
echo '====================='
$DOCKERCOMPOSE pull
echo ''

# Stop last stack, delete it, and start the new one
echo 'Shutting down servers'
echo '====================='
$DOCKERCOMPOSE down
echo ''

echo 'Deleting images'
echo '==============='
$DOCKERCOMPOSE rm -f
echo ''

echo 'Start new images'
echo '================'
$DOCKERCOMPOSE up -d --remove-orphans
echo ''

echo 'Your stack has been correctly updated.'
echo ''