# vananam-demo-123
# CI/CD Setup Documentation

## Project Overview
A simple Node.js app that serves "Hello, World!" via Express and runs in a Docker container.

Task #1

## CI/CD Tool
**GitHub Actions** is used for CI/CD due to its easy integration with GitHub, zero-cost for public repos, and flexible workflow configuration.

## Pipeline Steps
1. Checkout the code.
2. Install Node.js and dependencies.
3. Build the Docker image.
4. Optionally, run tests.
5. Optionally, push to DockerHub or deploy.

## Setup Instructions
- Create a GitHub repo and push your project code.
- Under repo settings, go to **Secrets → Actions** and add:
  - `DOCKER_USERNAME` – your Docker Hub username
  - `DOCKER_PASSWORD` – your Docker Hub password or access token

## Running the Pipeline
- Any push or PR to `main` branch triggers the pipeline automatically.
- View logs under **Actions** tab in your GitHub repo.
