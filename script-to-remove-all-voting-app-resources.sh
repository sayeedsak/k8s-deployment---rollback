#!/bin/bash

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null
then
    echo "kubectl could not be found. Please install it to use this script."
    exit 1
fi

# Delete Pods and Services
kubectl delete pod postgres-pod
kubectl delete pod redis-pod
kubectl delete pod result-app-pod
kubectl delete pod voting-app-pod
kubectl delete pod worker-pod

kubectl delete service db
kubectl delete service redis
kubectl delete service result-app-service
kubectl delete service voting-app-service

echo "All specified resources have been deleted."

