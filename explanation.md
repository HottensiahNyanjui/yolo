# Explanation of Dockerized YOLO Application

## 1. Base Image Chosen for Each Container

### Frontend
The base image used is `node:18-alpine`. It’s small in size and fast due to its lightweight nature.

### Backend
Similarly, `node:18-alpine` was chosen for the backend. It's compatible with Node.js, builds quickly, and results in a smaller image size.

### MongoDB
The official `mongo` image from Docker Hub was used. It's pre-configured and well-maintained

---

## 2. Dockerfile Directives

- `FROM`: Specifies the base image for the container.  
- `WORKDIR`: Sets the working directory inside the container.  
- `COPY`: Transfers files from the local file system into the container.  
- `RUN`: Executes commands such as installing dependencies.  
- `ENV NODE_OPTIONS=--openssl-legacy-provider`: Sets an environment variable to fix compatibility issues between Node.js and OpenSSL.  
- `EXPOSE`: Informs Docker which port the container will listen on.  
- `CMD`: Defines the default command to run when the container starts.

---

## 3. Docker Compose Networking

### Port Allocation
- Frontend: accessible via `localhost:3000`  
- Backend: accessible via `localhost:5000`  
- MongoDB: exposed on port `27017`

### Bridge Networking
Docker Compose sets up a default bridge network for container communication. In this project, a **custom bridge network** named `app-net` was configured. It uses a custom IPAM setup with:

- `subnet`: `172.20.0.0/16`  
- `ip_range`: `172.20.0.0/16`

---

## 4. Docker Compose Volume

To persist MongoDB data, a named volume `app-mongo-data` was defined. This ensures that data remains intact even if the MongoDB container is removed or rebuilt.

---

## 5. Git Workflow

- **Forking**: A fork of the original repository was created to work independently.  
- **Cloning**: The forked repo was cloned locally for development.  
- **Branching**: Work was done on the `master` branch while tracking changes.  
- **Add, Commit & Push**: Updates were staged using `git add`, committed with descriptive messages using `git commit -m`, and pushed using `git push`.

