# Infrastructure as Code (IaC) with Terraform: Docker Container Provisioning

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

A practical guide to provisioning Docker containers using Terraform, demonstrating Infrastructure as Code (IaC) principles.

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Understanding the Configuration](#understanding-the-configuration)
- [State Management](#state-management)
- [Cleanup](#cleanup)
- [Best Practices](#best-practices)
- [Extending This Project](#extending-this-project)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

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

## Project Structure
