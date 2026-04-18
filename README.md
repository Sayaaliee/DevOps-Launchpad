# 🚀 DevOps Launchpad

A personal DevOps portfolio web application showcasing CI/CD automation, containerization, and cloud deployment.

---

## 👩‍💻 About the Project

DevOps Launchpad is a lightweight web application created to demonstrate a complete DevOps workflow including:

- Containerizing an application using Docker
- Automating builds using Jenkins
- Pushing Docker images to DockerHub
- Deploying containers on AWS EC2
- Managing version-controlled development with Git & GitHub

This project simulates a real-world CI/CD pipeline used in modern DevOps environments.

---

## 🛠 Tech Stack

- HTML5
- CSS3
- Docker
- Jenkins (CI/CD Pipeline)
- DockerHub (Container Registry)
- Git & GitHub
- AWS EC2 (Deployment Server)

---

## ⚙️ CI/CD Pipeline Workflow

The Jenkins pipeline automates the entire deployment process:

1. Jenkins pulls source code from **GitHub**
2. Jenkins builds a **Docker image**
3. Jenkins logs into **DockerHub**
4. Jenkins pushes the image to **DockerHub**
5. Jenkins deploys the container on **AWS EC2**

This ensures automated and consistent deployments.

---

## 📦 Features

- Simple responsive web interface
- Dockerized application
- Automated CI/CD pipeline
- Cloud deployment using AWS EC2
- Versioned Docker image builds

---

## 🐳 Run with Docker (Local Deployment)

You can run the application locally using Docker.

Build the Docker image:

docker build -t devops-launchpad .

Run the container:

docker run -d -p 8080:80 devops-launchpad

Then open in your browser:

http://localhost:8080


## 🌐 Cloud Deployment

The application was deployed using Docker containers on an AWS EC2 instance through a Jenkins CI/CD pipeline.

Example deployment URL (may change if the instance is terminated):

http://43.205.216.138:81
