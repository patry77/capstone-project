#/bin/bash

docker_registry_ip=$TF_VAR_insecure_host


echo '{
  "insecure-registries": ["$docker_registry_ip}:8082"]
}' | sudo tee /etc/docker/daemon.json