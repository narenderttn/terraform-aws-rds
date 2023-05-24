output "endpoint" {
  value = var.create_aurora == true ? aws_rds_cluster.rds_cluster[0].endpoint : ""
}

output "identifier" {
  value = var.create_aurora == true ? aws_rds_cluster.rds_cluster[0].cluster_identifier : ""
}

output "port" {
  value     = var.create_aurora == true ? aws_rds_cluster.rds_cluster[0].port : ""
}

output "username" {
  value = var.master_username
}

output "password" {
  value     = var.create_username_password ? random_string.rds_db_password[0].result : var.master_password
}