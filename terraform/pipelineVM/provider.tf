terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.51"
    }
  }
}

provider "google" {
  credentials = var.gcp_credentials_file
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}