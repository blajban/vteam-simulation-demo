#!/usr/bin/env bash

echo "++++ CLOSING RUNNING CONTAINERS ++++"
docker-compose down

echo "++++ STARTING SERVER CONTAINER ++++"
docker-compose up -d scooter_server

echo "Server listening on http://localhost:8585"
echo "Run 'docker-compose run scooter' or 'docker-compose up -d scooter' to start scooter to start one scooter"
echo "Run 'docker-compose up -d --scale scooter=[number]' to start multiple (1 000 will taker 5-10 mins to start)"