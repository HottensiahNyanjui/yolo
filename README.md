# Objective
The goal was to automate the provisioning and configuration for a containerized e-commerce application using Vagrant and Ansible.

The application cloned from GitHub, and its services (frontend, backend, and database) deployed inside Docker containers—all without manually touching the virtual machine.

#Tools Used
- Vagrant: For provisioning a VM environment.

- VirtualBox: The VM provider.

- Ansible: For configuration management and service orchestration inside the VM.

- Docker & Docker Compose: To containerize and run the application.

- Git: To clone the application repository.

## The setup
1. Vagrantfile Setup
- Spins up a VirtualBox VM using the geerlingguy/ubuntu2004 base box.

- Forwards necessary ports:

   3000 (frontend)

   5000 (backend)

   27017 (MongoDB)

- Uses a shell provisioner to install Python for Ansible support.

- The VM is accessible by hostname yolo-ecommerce.

2. Ansible Automation
- The Ansible playbook handles the following, split by role:

   **Database Role**
- Installs Docker, Git, and Docker Compose.

   **Clones the app repo**

- Starts the MongoDB container via Docker Compose.

   **Backend Role**
- Installs necessary packages.

- Clones the backend code.

- Starts the backend API container using Docker Compose.

   **Frontend Role**
- Similar setup: installs Docker, Docker Compose, and Git.

- Clones the frontend code.

- Launches the frontend app container.

3. All services are deployed via:

community.docker.docker_compose_v2:
  project_src: "{{ docker_compose_directory }}"
  state: present
  build: always
  pull: always

4. Outcome
- Once vagrant up and ansible-playbook are run:

- The VM was provisioned and configured without manual SSH access.

- All Docker containers for the app were started and accessible on localhost via forwarded ports.

5. Access:

- Frontend: http://localhost:3000

- Backend API: http://localhost:5000

-  MongoDB: localhost:27017

