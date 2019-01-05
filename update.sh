#!/usr/bin/bash

docker-compose down
docker volume rm $(docker volume ls -q)
docker-compose build
docker-compose up --force-recreate