variable "vpc_network_name" {
  description = "VPC network name"
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

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}