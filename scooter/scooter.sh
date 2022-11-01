#!/usr/bin/env bash

# If you login to a scooter with "docker exec [container_id] bin/bash"
# you will se this message posted periodically

echo "Position: XXX. Time: " "$(date +%D-%H:%M)"

# Curling server just to show that it works
echo "$(curl scooter_server:5000)"
