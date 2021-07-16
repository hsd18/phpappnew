terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.13.0"
    }
  }
}

provider "docker" {
  host    = "unix:///var/run/docker.sock"
}
resource "docker_container" "yogeshnainlocal" {
  image = "yogeshnainlocal:latest"
  name  = "yogeshnainlocal"
  restart = "always"
    ports {
    internal = 80
    external = 8089
  }

}
