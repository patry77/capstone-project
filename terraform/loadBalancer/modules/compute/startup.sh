#/bin/bash
echo '{
  "insecure-registries": ["34.116.206.28:8082"]
}' | sudo tee /etc/docker/daemon.json
sudo systemctl daemon-reload
sudo systemctl restart docker