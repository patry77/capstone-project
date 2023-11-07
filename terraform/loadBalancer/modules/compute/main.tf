module "gce-container" {
  source = "terraform-google-modules/container-vm/google"
  version = "~> 2.0"

  container = {
    image = var.image
    tty : var.activate_tty
  }

  restart_policy = "Always"
}



resource "google_compute_instance_template" "vm_instance" {
  machine_type = var.compute_machine_type
  tags         = ["allow-health-check"]
  disk {
    source_image = module.gce-container.source_image
  }
  network_interface {
    network    = var.vpc_network_id
    subnetwork = var.subnetwork_id
  }
    metadata = {
    gce-container-declaration = module.gce-container.metadata_value
  }

  labels = {
    container-vm = module.gce-container.vm_container_label
  }
  metadata_startup_script = <<SCRIPT
    echo '{
      "insecure-registries": [$(printf '"%s", ' "${var.insecure_host}" | sed 's/, $//')]
    }' | sudo tee /etc/docker/daemon.json
    sudo systemctl daemon-reload
    sudo systemctl restart docker
  SCRIPT
}

resource "google_compute_instance_group_manager" "instance_group_manager" {
  name               = var.group_manager_name
  base_instance_name = var.vm_instance_name
  named_port {
    name = var.port_name
    port = var.group_manager_port
  }
  version {
    instance_template = google_compute_instance_template.vm_instance.id
  }
  target_size = var.group_manager_size
}
