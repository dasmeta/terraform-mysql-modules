resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "."
}

resource "mysql_user" "admin_user" {
  user               = var.admin_username
  host               = "%"
  plaintext_password = random_password.password.result
}

resource "mysql_grant" "admin_grant" {
  user       = mysql_user.admin_user.user
  host       = mysql_user.admin_user.host
  database   = "%"
  privileges = ["ALL"]
}
