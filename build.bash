#!/usr/bin/env bash


echo "++++ CLOSING RUNNING CONTAINERS ++++"
docker-compose down

echo "++++ DOCKER LOGIN ++++"
docker login

echo "++++ BUILDING CONTAINERS ++++"
docker build -t blajban/scooter-server:latest ./scooter_server/.
docker build -t blajban/scooter:latest ./scooter/.

echo "++++ PUSHING CONTAINERS ++++" 
docker push blajban/scooter-server:latest
docker push blajban/scooter:latest

echo "++++ STARTING SERVER CONTAINERS ++++"
docker-compose up -d scooter_server
# Uncomment to start in background
#docker-compose up -d scooter

echo "Server listening on http://localhost:8585"