# DevOps CI/CD Assignment

## Overview

This project demonstrates an end-to-end DevOps CI/CD pipeline for a
Spring Boot application.

The implementation covers source code management, continuous integration,
static code analysis, containerization, container registry, monitoring,
and deployment configuration.

## Architecture

Developer
   |
   v
GitHub Repository
   |
   v
Jenkins CI/CD Pipeline
   |
   +--------------------+
   |                    |
   v                    v
Maven Build          SonarQube
   |                 Code Analysis
   |                    |
   +---------+----------+
             |
             v
       Docker Build
             |
             v
       Docker Hub
             |
             v
 Kubernetes Deployment
             |
             v
 Spring Boot Application
             |
             v
      Actuator Metrics
             |
             v
        Prometheus
             |
             v
          Grafana

## Technologies Used

- Java 11
- Spring Boot
- Maven
- Jenkins
- Docker
- Docker Hub
- SonarQube
- Prometheus
- Grafana
- Kubernetes
- GitHub
- Linux/WSL2

## Project Structure

```text
Jenkins/
├── java-maven-sonar-argocd-helm-k8s/
│   ├── spring-boot-app/
│   │   ├── src/
│   │   ├── target/
│   │   ├── Dockerfile
│   │   └── pom.xml
│   │
│   └── spring-boot-app-manifests/
│       └── deployment.yml
│
└── README.md


Application

The application is a Spring Boot web application.

Maven is used to build and package the application into a JAR file.

The application also includes Spring Boot Actuator and Micrometer
Prometheus integration for monitoring.

Monitoring

The following Actuator endpoints are enabled:

/actuator/health
/actuator/info
/actuator/prometheus

Prometheus collects application metrics from the Prometheus endpoint.

Grafana is used to visualize the metrics and application health.

CI/CD Pipeline

Jenkins automates the complete CI/CD workflow.

Pipeline Stages
Checkout
Build and Test
Static Code Analysis
Build Docker Image
Push Docker Image
Update Deployment File