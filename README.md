<<<<<<< HEAD
=======
# Simple Jenkins Pipeline for CI/CD 🚀

This project demonstrates how to build and deploy a application using a CI/CD pipeline with **Jenkins** and **Docker**.

---

## 📦 Tech Stack

- Node.js (Express)
- Docker
- Jenkins
- GitHub

---

## 🔧 Features

- Automatically builds and deploys the app using Jenkins pipeline
- Dockerized environment for easy deployment
- Port mapping on `3000`

---

## 🛠️ Jenkins Build Steps

1. **Clone GitHub Repo**
2. **Build Docker Image**
3. **Run Docker Container**
4. **Expose Port 3000**

### 🧪 Shell Script Used in Jenkins

```bash
docker build -t node-jenkins-demo .
docker run -p 3000:3000 -d node-jenkins-demo
# node-jenkins-demo
simple jenkins pipeline for CI/CD
>>>>>>> d835e00 (Add README with CI/CD and Docker info)

