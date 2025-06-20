#!/bin/bash

echo "📦 Starting Kubernetes Deployment..."

# Use Jenkins user's kubeconfig and minikube home
export KUBECONFIG=/var/lib/jenkins/.kube/config
export MINIKUBE_HOME=/var/lib/jenkins/.minikube

echo "🔧 Applying deployment.yaml..."
kubectl apply -f k8s/deployment.yaml || { echo "❌ Failed to apply deployment.yaml"; exit 1; }

echo "🔧 Applying service.yaml..."
kubectl apply -f k8s/service.yaml || { echo "❌ Failed to apply service.yaml"; exit 1; }

echo "📊 Current pods status:"
kubectl get pods

echo "🌐 Services:"
kubectl get svc

echo "✅ Deployment script completed!"

