# CI/CD Pipeline Implementation Using Jenkins

This project demonstrates a complete CI/CD pipeline setup using **Jenkins**, **Docker**, **GitHub**, and **Kubernetes (Minikube)**. The pipeline automatically builds a Docker image, pushes it to Docker Hub, and deploys it to a Kubernetes cluster.

---

## 🚀 Tech Stack

- Jenkins – Continuous Integration
- Docker – Containerization
- GitHub – Source Code Management
- Docker Hub – Image Registry
- Kubernetes (Minikube) – Container Orchestration
- Flask – Python Web App

---

## 📁 Project Structure

```
#CI-CD-Pipeline-Implementation-Using-Jenkins/
├── app/
│ └── app.py
├── kubernetes/
│ ├── deployment.yaml
│ └── service.yaml
├── scripts/
│ └── deploy.sh
├── jenkins/
│ └── Jenkinsfile
├── Dockerfile
├── requirements.txt
└── README.md
```
---

🧰 Jenkins Setup

Installed Jenkins

                         Accessed via http://<EC2-IP>:8080

🔐 Jenkins Configuration

Installed:

Git plugin

Docker plugin

Kubernetes CLI plugin

Added Docker Hub credentials (docker-hub-credentials)

---

## 📌 Pipeline Stages

1. Jenkins pulls the code from GitHub.
2. Builds the Docker image from the Dockerfile.
3. Pushes the image to Docker Hub.
4. Executes a deployment script that applies Kubernetes manifests.
5. Exposes the app via a NodePort service.

---

## 🌍 Accessing the App

Open your browser and go to:

                             http://<your-ec2-public-ip>:30080

---

🧹 Cleanup

                              minikube stop

                              minikube delete

---
