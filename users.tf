resource "mysql_user" "user" {
  for_each = var.databases

  user               = each.value.db_user
  host               = "%"
  plaintext_password = each.value.db_user_password
}
