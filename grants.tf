resource "mysql_grant" "grant" {
  for_each = var.databases

  user       = each.value.db_user
  host       = mysql_user.user[each.key].host
  database   = each.value.db
  privileges = ["ALL PRIVILEGES"]
}
