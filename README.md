# Kubenetes-Overkill
A Dockerized Nginx static site deployed on a local Kubernetes cluster using Minikube, featuring a scalable deployment with 3 replicas and NodePort service exposure.

This project is a demonstration of deploying a simple static website using Docker and Kubernetes. The Docker image, which contains an Nginx server serving the static site, is hosted on Docker Hub. Kubernetes is used to deploy the application locally using Minikube with a configuration that includes three replicas of the Nginx server.

## Project Structure

```bash
.
├── conf
│   └── nginx.conf          # Nginx configuration file
├── deployment.yaml         # Kubernetes Deployment configuration
├── Dockerfile              # Dockerfile to build the Nginx image
├── html
│   └── index.html          # Static HTML files served by Nginx
└── services.yaml           # Kubernetes Service configuration
```
## Components

1. Dockerfile

* A Dockerfile that builds an Nginx image using the official nginx:alpine base image.
* The static files are copied to /usr/share/nginx/html within the container.
* The custom Nginx configuration is copied to /etc/nginx/nginx.conf.

2. Docker Hub

* The Docker image is built and pushed to Docker Hub under the repository iksm69/overkill:latest.

3. Kubernetes Deployment

* The deployment.yaml file defines a Kubernetes Deployment with 3 replicas of the Nginx container.
* The Deployment ensures that three Pods are running the Nginx container at all times.

4. Kubernetes Service

* The services.yaml file defines a Kubernetes Service of type NodePort.
* This Service exposes the Nginx application on a specific port, allowing access from a web browser.

## Deployment Instructions

### Prerequisites
[Docker](https://docs.docker.com/engine/ "Docker")
[Minikube](https://kubernetes.io/fr/docs/tasks/tools/install-minikube/ "Minikube")
[Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/ "Kubectl")

### Steps

1. Start Minikube

```bash
minikube start
```

2. Deploy the Application on Kubernetes

Apply the Deployment and Service configuration files:
```bash
kubectl apply -f deployment.yaml
kubectl apply -f services.yaml
```

3. Access the Application

Determine the NodePort assigned by Kubernetes and access the application in your browser:
```bash
minikube service nginx-service --url
```

## Conclusion

This project demonstrates a simple deployment of a static website using Docker and Kubernetes. The setup includes building a Docker image, pushing it to Docker Hub, and deploying it on a local Kubernetes cluster using Minikube, with a scalable deployment ensured by Kubernetes.