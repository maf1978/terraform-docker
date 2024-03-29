output "IP_address" {
  value = join(":", [docker_container.nodered_container[0].ip_address,  docker_container.nodered_container[0].ports[0].external])  
  description = "The IP address and external port of the container"
}

output "container_name" {
  value = docker_container.nodered_container[*].name 
  description = "The name of the container"
}

#output "IP_address2" {
#  value = join(":", [docker_container.nodered_container[1].ip_address,     # docker_container.nodered_container[1].ports[0].external])  
#  description = "The IP address and external port of the container"
#}


