#!/bin/bash

BLUE='\033[0;36m'
NC='\033[0m'

PROJECT_NAME="minishell"
IMAGE_NAME="minishell-env"

# Build docker image if not build yet
if [[ "$(sudo docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
    echo -e "${BLUE}Creating $PROJECT_NAME development environment...${NC}"
    sudo docker build -t $IMAGE_NAME .

    # Exit if Docker fails
    if [[ $? -ne 0 ]]; then
        exit 1
    fi
fi

# Authorize X11
xhost +local:docker > /dev/null

sudo docker run -it --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/app \
    --device /dev/snd \
    $IMAGE_NAME \
    sh -c "make && ./$PROJECT_NAME"