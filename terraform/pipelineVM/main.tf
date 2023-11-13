module "compute" {
  source               = "./modules/compute"
  ci_cd_vm_name = var.ci_cd_vm_name
  machine_type  = var.machine_type
  ssh_public_key = var.ssh_public_key
  
}
