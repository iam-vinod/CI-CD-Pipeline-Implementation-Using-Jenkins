#!/bin/bash

echo "📦 Starting Kubernetes Deployment..."

# Export kubeconfig to point to jenkins user's config
export KUBECONFIG=/var/lib/jenkins/.kube/config
export MINIKUBE_HOME=/var/lib/jenkins

echo "🔧 Applying deployment.yaml..."
if ! kubectl apply -f k8s/deployment.yaml; then
    echo "❌ Failed to apply deployment.yaml"
    exit 1
fi

echo "🔧 Applying service.yaml..."
if ! kubectl apply -f k8s/service.yaml; then
    echo "❌ Failed to apply service.yaml"
    exit 1
fi

echo "📊 Current pods status:"
kubectl get pods

echo "🌐 Services:"
kubectl get svc

echo "✅ Deployment script completed!"

