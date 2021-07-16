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
  image = "amakundu/moe-php-mysql-demo:1.0.0"
  name  = "amakundu/moe-php-mysql-demo:1.0.0"
  restart = "always"
    ports {
    internal = 80
    external = 8089
  }

}
