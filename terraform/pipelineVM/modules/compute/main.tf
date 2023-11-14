resource "google_compute_address" "static_ip" {
  name = "pipelinevm-static-ip"
}

resource "google_compute_instance" "ci_cd_vm" {
  name         = var.ci_cd_vm_name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size = 20
    }
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }
    metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }
  tags = ["http-server"]
}
