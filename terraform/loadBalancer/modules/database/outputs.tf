output "db_instance_ip" {
  value = google_sql_database_instance.petclinic.ip_address
}