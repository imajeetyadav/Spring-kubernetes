terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "spring-kubernetes" {
  name         = "imajeetyadav/spring-kubernetes"
  keep_locally = false
}

resource "docker_container" "spring-kubernetes" {
  image = docker_image.spring-kubernetes.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 80
  }
}
