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
Components
Dockerfile
```

A Dockerfile that builds an Nginx image using the official nginx:alpine base image.
The static files are copied to /usr/share/nginx/html within the container.
The custom Nginx configuration is copied to /etc/nginx/nginx.conf.
Docker Hub

The Docker image is built and pushed to Docker Hub under the repository iksm69/overkill:latest.
Kubernetes Deployment

The deployment.yaml file defines a Kubernetes Deployment with 3 replicas of the Nginx container.
The Deployment ensures that three Pods are running the Nginx container at all times.
Kubernetes Service

The services.yaml file defines a Kubernetes Service of type NodePort.
This Service exposes the Nginx application on a specific port, allowing access from a web browser.
Deployment Instructions
Prerequisites
Docker
Minikube
Kubectl
Steps
Build and Push Docker Image

bash
Copy code
docker build -t iksm69/overkill:latest .
docker push iksm69/overkill:latest
Start Minikube

bash
Copy code
minikube start
Deploy the Application on Kubernetes

Apply the Deployment and Service configuration files:

bash
Copy code
kubectl apply -f deployment.yaml
kubectl apply -f services.yaml
Access the Application

Determine the NodePort assigned by Kubernetes and access the application in your browser:

bash
Copy code
minikube service nginx-service --url
Conclusion
This project demonstrates a simple deployment of a static website using Docker and Kubernetes. The setup includes building a Docker image, pushing it to Docker Hub, and deploying it on a local Kubernetes cluster using Minikube, with a scalable deployment ensured by Kubernetes.

vbnet
Copy code

This README provides a clear overview of your project, its components, and step-by-step instructions on how to build, deploy, and access the application.
You said:
donne moi une idee de comment nommer mon repos github avec kubernetes suivie de overkill je met un - ou un / ou un _ etc etc ???
ChatGPT said:
ChatGPT
Pour nommer ton dépôt GitHub, l'utilisation du tiret (-) est généralement la meilleure pratique. Il est lisible, bien accepté dans les conventions de nommage, et aide à séparer les mots de manière claire.

Idée de nom de dépôt :
kubernetes-overkill
Pourquoi le tiret (-) ?
Lisibilité : Les mots sont clairement séparés, ce qui rend le nom facile à lire.
Conventions de nommage : Le tiret est couramment utilisé dans les noms de projets open-source et les dépôts GitHub.
Compatibilité : Le tiret est compatible avec la plupart des systèmes et ne pose pas de problème dans les URL.
Tu pourrais également utiliser un underscore (_) si tu préfères, mais le tiret est généralement plus standard. Éviter le slash (/), car il pourrait être interprété comme un chemin plutôt qu'un nom de dépôt.
