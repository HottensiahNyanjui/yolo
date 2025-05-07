## Overview
This document explains the structure, purpose, and automation logic used in the Yolo E-commerce project. The goal of this stage was to automate the provisioning and configuration of a development environment for a containerized e-commerce application using Vagrant and Ansible.

## Infrastructure Architecture
Creates a single virtual machine (VM) using Vagrant with the following components configured:

- Ubuntu 20.04 as the guest OS (geerlingguy/ubuntu2004)

- Forwarded ports for:

- Frontend (React) – localhost:3000

- Backend (Node.js API) – localhost:5000

- Database (MongoDB) – localhost:27017

- Private network setup via DHCP

- VirtualBox as the VM provider

## Provisioning & Configuration with Ansible
- After provisioning the VM, Ansible takes over using a multi-role playbook structured into database, backend, and frontend roles.

- Each role:

- Installs prerequisites: Docker, Docker Compose, Git

- Clones the application repository from GitHub

- Uses Docker Compose to start containers for the respective service

## Project Structure
YOLO/
├── .vagrant/
├── .vscode/
├── backend/
├── client/
├── group_vars/
├── roles/
├── stage-1-Ansible-root/
│   └── Stage_two/
├── .dockerignore
├── .gitignore
├── ansible.cfg
├── backend-deployment.yaml
├── docker-compose.yaml
├── explanation.md
├── frontend-deployment.yaml
├── hosts
├── image.png
├── inventory
├── playbook.yaml
├── README.md
├── structure
└── Vagrantfile

## Testing the Setup
- Once you run:

    vagrant up
    ansible-playbook -i hosts playbook.yaml --tags "database,backend,frontend"

You should be able to access:

**Frontend at http://localhost:3000**

**Backend API at http://localhost:5000**

**MongoDB on localhost:27017**