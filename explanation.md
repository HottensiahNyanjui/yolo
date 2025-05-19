## Overview

The objective of this project was to deploy a full-stack web application to a cloud-native environment using Google Kubernetes Engine (GKE). This involved containerizing the application's frontend, backend, and database components, deploying them using Kubernetes manifests, ensuring data persistence, and exposing the application to external traffic. The goal was to gain hands-on experience with deploying and managing applications in a Kubernetes cluster.

## Tools and Technologies Used

- Docker: Used to containerize the frontend, backend, and MongoDB database.

- Kubernetes (GKE): Used to orchestrate and deploy containers on Google Cloud.

- kubectl: Command-line tool to interact with the Kubernetes cluster.

- MongoDB: NoSQL database used to store and retrieve product data.

- React: JavaScript library used to build the frontend UI.

- Node.js + Express: Used for building the backend API server.

- Google Cloud Platform (GCP): Provided the infrastructure and services, including Google Kubernetes Engine.

## Deployment Summary

- Frontend: Built with React, served using NGINX, and deployed using a Deployment and Service. Configured to proxy API requests to the backend.

- Backend: Built with Node.js and Express. Deployed as a Deployment and exposed internally via a ClusterIP Service.

- Database: MongoDB deployed using a StatefulSet with a PersistentVolumeClaim to ensure data persistence.

- Services: Kubernetes Services (ClusterIP and LoadBalancer) were configured to enable communication between components and expose the frontend to the internet.

- Testing and Debugging: kubectl and port-forwarding were used to test connectivity and application functionality.

## Outcome

The application was successfully deployed and could be accessed via an external IP http://34.121.42.29/ . Data persistence was verified through MongoDB integration. The project demonstrated key DevOps and cloud-native practices, including containerization, persistent storage, inter-service communication, and cloud deployment.