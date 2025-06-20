#!/bin/bash

echo "📦 Starting Kubernetes Deployment..."

# Apply deployment
echo "🔧 Applying deployment.yaml..."
kubectl apply -f kubernetes/deployment.yaml --validate=false

# Apply service
echo "🔧 Applying service.yaml..."
kubectl apply -f kubernetes/service.yaml --validate=false

# Show current status
echo "📊 Current pods status:"
kubectl get pods

echo "🌐 Services:"
kubectl get svc

echo "✅ Deployment script completed!"

