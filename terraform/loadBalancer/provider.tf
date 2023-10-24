terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.51"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
provider "cloudflare" {
  api_token = var.cloudflare_token
}