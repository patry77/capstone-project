#/bin/bash

docker_registry_ip=$1


echo '{
  "insecure-registries": ["'"${docker_registry_ip}"':8082"]
}' | sudo tee /etc/docker/daemon.json