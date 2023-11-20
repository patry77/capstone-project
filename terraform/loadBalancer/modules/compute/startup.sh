#/bin/bash

echo '{
  "insecure-registries": ["${insecure_host}:8082"]
}' | sudo tee /etc/docker/daemon.json