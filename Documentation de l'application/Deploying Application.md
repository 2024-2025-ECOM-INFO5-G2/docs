# Deploying the Application

This document provides a step-by-step guide on how to deploy the application.

## Prerequisites

Before you begin, ensure you have the following:
- Terraform installed on the system
- Azure CLI installed and configured

## Steps to Deploy

1. **Clone the Repository**
    ```sh
    git clone https://github.com/your-repo/application.git
    cd application
    ```

2. **Execute the Deployment Script**
    ```sh
    ./deploy.sh {version}
    ```

## Script Details

- Builds the application as a Docker image
- Pushes the image to Docker Hub
- Initializes Terraform working directory
- Exits with error if initialization fails
- Deploys specific Azure resources 
- Exits with error if deployment fails
- Outputs the application URL

This appears to be setting up a complete networking stack and Linux VM in Azure using Infrastructure as Code principles.

## Conclusion

This document provides a step-by-step guide on how to deploy the application. If you encounter any issues, please refer to the troubleshooting guide.