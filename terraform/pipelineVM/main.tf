module "compute" {
  source         = "./modules/compute"
  ci_cd_vm_name  = var.ci_cd_vm_name
  machine_type   = var.machine_type
  ssh_public_key = var.ssh_public_key

}

module "database" {
  source         = "./modules/database"
  mysql_user = var.mysql_user
  mysql_password = var.mysql_password
  database_name = var.database_name
  region = var.region
}