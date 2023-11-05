output "vm_public_ip" {
  value = google_compute_instance.ci_cd_vm_name.network_interface.0.access_config.0.nat_ip
}