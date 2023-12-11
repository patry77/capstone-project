variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "zone" {
  description = "Zone"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}
variable "gcp_credentials_file" {
  description = "Path to the credentials file"
  type        = string
}

variable "ci_cd_vm_name" {
  description = "Name of the CI/CD VM"
  type        = string
}

variable "machine_type" {
  description = "Machine type of the CI/CD VM"
  type        = string
}

variable "mysql_user" {
  description = "Username for the database"
  type        = string
}
variable "mysql_password" {
  description = "Password for the database"
  type        = string
}
variable "database_name" {
  description = "Name of the database"
  type        = string
}