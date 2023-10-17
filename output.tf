output "admin_user_password" {
  value     = random_password.password.result
  sensitive = true
}
