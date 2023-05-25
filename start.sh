#!/bin/bash

echo "Starting to install..."

DOCKER_FOLDER="docker"

# check for docker folder
if [ -d "$DOCKER_FOLDER" ]; then
  echo "Docker folder exists."
  cd "$DOCKER_FOLDER"
  
  # making copies of your local docker-compose and .env from example files 
    if [ -f "docker-compose.yml" ]; then
        echo "docker-compose.yml already exists"
    else
        echo "Coping docker-compose.yml.example to docker-compose.yml"
        cp docker-compose.yml.example docker-compose.yml
    fi

    if [ -f ".env" ]; then
        echo ".env already exists"
    else
        echo "Coping .env.example to .env"
        cp .env.example .env
    fi

    # update docker-compose.yml or .env file if necessary
    read -p "Do you want to make changes on the docker-compose.yml file? y/n: " CHOICE
        if [[ $CHOICE == "y" || $CHOICE == "Y"]]; then
            nano docker-compose.yml
        fi

    read -p "Do you want to make changes on the env file? y/n: " CHOICE
        if [[ $CHOICE == "y" || $CHOICE == "Y"]]; then
            nano .env
        fi

    # starting to build the docker containers
    echo "Building docker containers..."
    docker-compose up -d --build

    # return to root directory
    cd ..

    echo "Thank you for your patience."
else
  echo "Docker folder does not exist."
fi