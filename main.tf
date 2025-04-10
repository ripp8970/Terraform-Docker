# Configure the Docker provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  # Configuration options (usually defaults work for local Docker)
}

# Pull the latest nginx image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create a container
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}