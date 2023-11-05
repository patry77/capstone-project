resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  network       = google_compute_network.vpc_network.name
  ip_cidr_range = var.subnetwork_cidr_range
}
