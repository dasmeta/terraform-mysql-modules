resource "mysql_database" "db" {
  for_each              = var.databases
  name                  = each.value.db
  default_character_set = each.value.default_character_set
  default_collation     = each.value.default_character_set
}
