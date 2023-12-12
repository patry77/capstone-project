resource "google_sql_database_instance" "petclinic" {
  name             = var.database_name
  database_version = "MYSQL_5_7"
  region           = var.region

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name  = "all"
        value = "0.0.0.0/0"
      }
    }
  }
  deletion_protection = false
}
resource "google_sql_user" "users" {
  name     = var.mysql_user
  instance = google_sql_database_instance.petclinic.name
  password = var.mysql_password
}