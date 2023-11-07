variable project_id {
  description = "Project ID"
  type        = string
}

variable region {
  description = "Region"
  type        = string
}

variable zone {
  description = "Zone"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}
variable "credentials_file" {
  description = "Path to the credentials file"
  type        = string
}