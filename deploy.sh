#!/bin/bash
set -e

# Variables
CLUSTER_NAME="madhu-cluster"
AWS_REGION="us-east-1"
DEPLOY_FILE="frontend-deploy.yaml"

echo "[INFO] Updating kubeconfig for EKS cluster..."
aws eks update-kubeconfig --region "$AWS_REGION" --name "$CLUSTER_NAME"

echo "[INFO] Deploying application to EKS..."
kubectl apply -f "$DEPLOY_FILE"

echo "[INFO] Checking service status..."
kubectl get svc

echo "[INFO] Deployment completed successfully!"

