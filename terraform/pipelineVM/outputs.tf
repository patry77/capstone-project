output "vm_public_ip" {
  value = module.compute.vm_public_ip
}

output "db_instance_ip" {
  value = module.database.db_instance_ip
}