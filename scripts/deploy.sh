#!/bin/bash

echo "📦 Starting Kubernetes Deployment..."

echo "🔧 Applying deployment.yaml..."
kubectl apply -f k8s/deployment.yaml || { echo "❌ Failed to apply deployment.yaml"; exit 1; }

echo "🔧 Applying service.yaml..."
kubectl apply -f k8s/service.yaml || { echo "❌ Failed to apply service.yaml"; exit 1; }

echo "📊 Current pods status:"
kubectl get pods

echo "🌐 Services:"
kubectl get svc

echo "✅ Deployment script completed!"

