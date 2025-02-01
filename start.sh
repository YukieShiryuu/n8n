#!/bin/bash

# For Podman volumes to be accessible outside the container
podman volume create traefik_data  && \
podman volume create n8n_data  && \
podman volume create ollama-local  && \
podman volume create open-webui-local 

echo "Volumes created successfully!"

podman-compose up    

