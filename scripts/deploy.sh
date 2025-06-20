#!/bin/bash

# ✅ Set correct environment variables for Jenkins context
export HOME=/var/lib/jenkins
export KUBECONFIG=/var/lib/jenkins/.kube/config
export MINIKUBE_HOME=/var/lib/jenkins/.minikube

echo "📦 Starting Kubernetes Deployment..."
echo "🔧 Applying deployment.yaml..."

# ✅ Apply Deployment and Service
kubectl --kubeconfig=$KUBECONFIG apply -f kubernetes/deployment.yaml
kubectl --kubeconfig=$KUBECONFIG apply -f kubernetes/service.yaml

echo "🌐 Setting up port-forward to expose service publicly..."

# ✅ Port-forward (non-blocking in background)
kubectl --kubeconfig=$KUBECONFIG port-forward --address=0.0.0.0 service/my-app-service 30080:80 &

echo "✅ Deployment complete. App should be accessible at:"
curl -s http://checkip.amazonaws.com | xargs -I {} echo "➡  http://{}:30080"

