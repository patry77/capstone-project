output "instance_ip" {
  value = module.network.lb_ip
}

output "db_instance_ip" {
  value = module.database.db_instance_ip
}