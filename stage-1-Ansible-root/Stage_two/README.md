# YOLO E-commerce Infrastructure Deployment

This project automates the provisioning and configuration of a containerized YOLO E-commerce app using **Terraform**, **Vagrant**, and **Ansible**.

## Stack

- **Terraform**: Infrastructure as Code (IaC) for provisioning
- **Ansible**: Configuration management and container orchestration
- **Docker**: Used for running frontend, backend, and database containers

---

## Folder Structure

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

## Setup Instructions

1. **Install Dependencies**  
   Make sure you have these installed:
   - [VirtualBox](https://www.virtualbox.org/)
   - [Vagrant](https://www.vagrantup.com/)
   - [Terraform](https://developer.hashicorp.com/terraform/downloads)
   - [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

2. **Clone the Repo**

   
   git clone https://github.com/HottensiahNyanjui/yolo.git
   cd yolo/

3. **Run Terraform**
  cd terraform
  terraform init
  terraform apply

4. **Access the App**
After provisioning:

Visit the app at: http://localhost:3000

