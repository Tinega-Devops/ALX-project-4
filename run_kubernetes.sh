#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=docker.io/tinegaonchari/api

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment alx-prediction-api --image=$dockerpath
kubectl create deployment alx-prediction-api --image=$dockerpath --port=8000 
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
#kubectl port-forward alx-prediction-api-7f6f4c4fff-g6t9h 8000:8000
#kubectl delete deployment --all
kubectl port-forward deployment/alx-prediction-api 8000:8000
