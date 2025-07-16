# vananam-demo

# Node.js Docker App – CI/CD Setup

## Overview
This project is a simple Node.js web application containerized using Docker, with a GitHub Actions CI/CD pipeline that:

- Builds the Docker image on every push to `main`
- Runs dummy tests
- Deploys the container to a simulated staging environment
- Rolls back automatically if health check fails

## Requirements
- Node.js 16+
- Docker installed
- GitHub repository

## CI/CD Tool
**GitHub Actions** is used due to tight GitHub integration and no external infrastructure needed.

## Pipeline Breakdown

### CI Steps:
- Checkout code
- Run dummy tests
- Build Docker image

### CD Steps:
- Run container on port 8080
- Health check via curl
- Rollback if health check fails

## Notes
- Works best in local/self-hosted runners and github codespace.
- For production-grade setups, use GitHub Container Registry or DockerHub for image persistence.




## Pipeline Steps (optionally)

1. Build the Docker image.
2. Optionally, run tests.
3. Optionally, push to DockerHub or deploy(prod).

## Setup Instructions
- Create a GitHub repo and push your project code.
- Under repo settings, go to **Secrets → Actions** and add:
  - `DOCKER_USERNAME` – your Docker Hub username
  - `DOCKER_PASSWORD` – your Docker Hub password or access token

## Running the Pipeline
- Any push or PR to `main` branch triggers the pipeline automatically.
- View logs under **Actions** tab in your GitHub repo.
