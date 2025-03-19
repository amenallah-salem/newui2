#!/bin/bash
docker compose down --remove-orphans
docker compose -f docker-compose-build-pycli.yml up --build

#docker ps 
#docker run -it CONT_ID 
#docker cp CONT_ID:/app/releases/* ./releases