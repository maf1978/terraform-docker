terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "nodered_image" {
  name = "nodered/node-red:latest"
    
}

resource "ramdon_string" "ramdon" {
  count = 2
  lenght = 4
  special = false 
  upper = false 

}


resource "docker_container" "nodered_container" {
  count = 2
  name = join("-", "nodered", randon_string.random[count.index].result)
  image = docker_image.nodered_image.latest 
  ports {
    internal = 1880
    #external = 1880
  }
}

resource "docker_container" "nodered_container2" {
  name = "nodered2"
  image = docker_image.nodered_image.latest 
  ports {
    internal = 1880
    #external = 1880
  }
}
