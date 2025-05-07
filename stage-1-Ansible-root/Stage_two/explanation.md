# YOLO E-commerce Infrastructure Automation 

## Overview

This project demonstrates a fully automated infrastructure provisioning using **Terraform** and **Ansible**. The objective is to:
1. Spin up a Vagrant Virtual Machine (VM)
2. Provision the VM using Terraform
3. Deploy a containerized YOLO E-commerce application
4. Access the frontend at `http://localhost:3000`

---

## 🧱 Project Structure
stage-1-Ansible-root/
└── Stage_two/
    ├── ansible/
    │   ├── group_vars/
    │   │   └── web.yaml
    │   ├── roles/
    │   │   ├── backend/
    │   │   │   └── tasks/
    │   │   │       └── main.yaml
    │   │   ├── database/
    │   │   │   └── tasks/
    │   │   │       └── main.yaml
    │   │   ├── frontend/
    │   │   │   └── tasks/
    │   │   │       └── main.yaml
    │   │   └── terraform/
    │   │       └── tasks/
    │   │           └── main.yaml
    │   ├── hosts
    │   └── playbook.yaml
    ├── terraform/
    │   ├── .terraform/
    │   ├── .terraform.lock.hcl
    │   ├── main.tf
    │   ├── output.tf
    │   ├── terraform.tfstate
    │   └── terraform.tfstate.backup
    ├── explanation.md
    ├── README.md
    └── structure

---

## How It Works

### 1. **Terraform Configuration (`main.tf`)**

- Uses a `null_resource` with `local-exec` provisioners.
- First provisioner runs `vagrant up` to boot the VM.
- Second provisioner runs the Ansible playbook:

### 2. **Ansible Inventory (ansible/hosts)**
Contains the connection details for the Vagrant VM.

### 3. **Ansible Playbook (playbook.yaml)**
- Installs Docker and Docker Compose

- Clones the YOLO E-commerce repo

- Runs Docker Compose to start backend, database and frontend containers

### **How to Run**
1. Ensure dependencies are installed:

- Vagrant

- VirtualBox

- Terraform

- Ansible

2. From the terraform/ directory run:

    terraform init
    terraform apply
3. After successful provisioning, open:
    **http://localhost:3000**
to view the e-commerce app.



