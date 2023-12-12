terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.51"
    }
  }
    required_version = "~> 1.5.0"
}

provider "google" {
  credentials = var.gcp_credentials_file
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}