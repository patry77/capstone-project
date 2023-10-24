resource "google_compute_instance_template" "vm_instance" {
  machine_type = var.compute_machine_type
  tags         = ["allow-health-check"]
  disk {
    source_image = "apache"
  }
  network_interface {
    network    = var.vpc_network_id
    subnetwork = var.subnetwork_id
  }
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


resource "google_compute_instance" "ci_vm" {
  name         = var.ci_vm_name
  machine_type = var.compute_machine_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network    = var.vpc_network_id
  }

  metadata = {
    hostname = var.ci_vm_hostname
  }
}
