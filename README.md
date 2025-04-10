# Infrastructure as Code (IaC) with Terraform: Docker Container Provisioning

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

A practical guide to provisioning Docker containers using Terraform, demonstrating Infrastructure as Code (IaC) principles.

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)

## Introduction

This project demonstrates how to use Terraform to:
- Automatically provision Docker containers
- Manage container lifecycle (create, update, destroy)
- Implement Infrastructure as Code (IaC) principles
- Maintain infrastructure state

Key benefits:

✅ Reproducible infrastructure  
✅ Version-controlled configuration  
✅ Automated provisioning  
✅ Declarative management  

## Prerequisites

Before you begin:
- [Terraform](https://www.terraform.io/downloads) (v1.0+ recommended)
- [Docker Engine](https://docs.docker.com/engine/install/) (running locally)
- Basic understanding of:
  - Docker concepts (images, containers)
  - CLI usage
  - HCL (HashiCorp Configuration Language)


## Getting Started

1. Clone this repository
   ```bash
   git clone https://github.com/ripp8970/Terraform-Docker.git
   cd Terraform-Docker
   ```

2. Initialize Terraform
   ```bash
   terraform init
   ```
   What happens:
    - Terraform downloads the Docker provider plugin
    - Initializes the backend (local by default)
    - Creates .terraform directory with provider binaries.


3. Review Execution Plan
   ```bash
   terraform plan
   ```
   What happens:
    - Terraform compares desired state (your config) with current state
    - Shows what actions it will take without making changes.


4. Apply the Configuration
   ```bash
   terraform apply
   ```


5. Verify the Container
   ```bash
   docker ps
   ```
   You should see your "tutorial" container with port 8000->80 mapping.
   You can also verify by visiting: http://localhost:8000


6. Examine Terraform State
   ```bash
   terraform state list
   ```
   Shows all managed resources:
    docker_container.nginx
    docker_image.nginx

   To see details of a specific resource:
   ```bash
   terraform state show docker_container.nginx
   ```


7. Destroy the Infrastructure
   ```bash
   terraform destroy
   ```
   What happens:
    - Terraform shows what will be destroyed
    - After confirmation, it will:
        1. Stop and remove the container
        2. Remove the image (if keep_locally = false)
    - Update the state file