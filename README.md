# CI-CD-Pipeline-Implementation-Using-Jenkins

## Overview
This project demonstrates a CI/CD pipeline using Jenkins, Docker, Kubernetes, and GitHub Actions.

## Steps to Execute
1. **Clone the Repository**
   ```sh
   git clone https://github.com/your-repo.git
   cd CI-CD-Jenkins-Pipeline
   ```
2. **Setup Jenkins**
   - Install required plugins (Pipeline, Docker, Kubernetes CLI)
   - Configure Jenkins pipeline to use this repository
3. **Run the Jenkins Pipeline**
   - Navigate to Jenkins and start the pipeline job
4. **Verify Deployment**
   ```sh
   kubectl get pods
   kubectl get svc
   ```
   - Access the service using `minikube service my-app-service --url`

## Technologies Used
- Jenkins
- Docker
- Kubernetes
