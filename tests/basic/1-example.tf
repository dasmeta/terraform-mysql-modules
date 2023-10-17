
module "this" {
  source = "../.."

  databases = {
    client_1 = {
      db               = "db1"
      db_user          = "db1_user"
      db_user_password = "plainpassword"
    },
    client_2 = {
      db               = "db2"
      db_user          = "db2_user"
      db_user_password = "plainpassword"
    },
  }
}

output "admin_user_password" {
  value     = module.this.admin_user_password
  sensitive = true
}
