# ENSF 400 Project - Demo Application with CI/CD

## Team Members
- Hamza Imtiaz (GitHub: HamzaIkhurram)
- Farha Ahmed (GitHub: farhaahmed)

## Project Description
This project implements a CI/CD pipeline for the demo application from https://github.com/denoslab/ensf400-demo. We've containerized the application using Docker and set up automated workflows for testing and deployment.

## Setup Instructions

### Prerequisites
- Java 11
- Docker
- Git

### Clone the Repository
git clone https://github.com/HamzaIkhurram/ensf400-demo.git
cd ensf400-demo
### Build and Run Locally
chmod +x gradlew
./gradlew build
./gradlew apprunVisit http://localhost:8080/demo in your browser.

### Docker Instructions
Build the Docker image
docker build -t hamzaikhurram/ensf400-demo:latest .Run the container
docker run -p 8080:8080 hamzaikhurram/ensf400-demo:latest
## CI/CD Pipeline
Our CI/CD pipeline includes:
- Automated builds triggered by pull requests
- Container image generation and publishing
- Unit and integration tests
- Code quality checks with SonarQube

## Docker Hub Repository
Our container image is available at: https://hub.docker.com/r/hamzaikhurram/ensf400-demo
