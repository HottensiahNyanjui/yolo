# Objective
The objective of this project was to deploy a full-stack web application to Google Kubernetes Engine (GKE) using Docker and Kubernetes. It aimed to demonstrate skills in containerization, Kubernetes object management (Deployments, Services, PVCs), and cloud deployment. The app integrates a MongoDB backend, a Node.js API, and a React frontend. Persistent storage, networking, and good DevOps practices were key focus areas.

## Features

- Add and view products
- MongoDB for persistent storage (via StatefulSet & PVC)
- Node.js/Express backend API
- React-based frontend UI
- Kubernetes deployment with:
  - Deployment/StatefulSet
  - Services (ClusterIP & LoadBalancer)
  - Persistent Volume Claims

## Tools Used
The tools used in this project include:

* **Docker** – for containerizing the application components (frontend, backend, and database).
* **Kubernetes (GKE)** – for orchestrating and deploying the containers in the cloud.
* **kubectl** – for interacting with the Kubernetes cluster from the command line.
* **MongoDB** – as the database for storing application data.
* **React** – for building the frontend user interface.
* **Node.js + Express** – for the backend API server.
* **Google Cloud Platform (GCP)** – specifically Google Kubernetes Engine, to host and manage the application.
* **Git** – To clone the application repository.

## The setup
1. Clone the Repo

```bash
git clone https://github.com/HottensiahNyanjui/yolo.git
cd yolo

2. Deploy to Kubernetes
Apply all manifests in the manifests/ directory:

```bash
kubectl apply -f manifests/

3. Access the Application
Once deployed and exposed, visit the frontend via the external IP:

```bash
kubectl get svc frontend

#- Frontend: http://34.121.42.29/ #