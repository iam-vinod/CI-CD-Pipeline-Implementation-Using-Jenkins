#!/bin/bash

# ✅ Force kubectl and minikube to use Jenkins-specific config
export HOME=/var/lib/jenkins
export KUBECONFIG=/var/lib/jenkins/.kube/config
export MINIKUBE_HOME=/var/lib/jenkins/.minikube

echo "📦 Starting Kubernetes Deployment..."
echo "🔧 Applying deployment.yaml..."

kubectl apply -f k8s/deployment.yaml

