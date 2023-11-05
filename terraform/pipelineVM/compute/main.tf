resource "google_compute_instance" "ci_cd_vm_name" {
  name         = var.ci_cd_vm_name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = var.vpc_network_name
  }
}
