# terraform-mysql-modules
This module creates mysql databases, users, grants.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_mysql"></a> [mysql](#requirement\_mysql) | 1.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mysql"></a> [mysql](#provider\_mysql) | 1.2.1 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mysql_database.db](https://registry.terraform.io/providers/takatohano/mysql/1.2.1/docs/resources/database) | resource |
| [mysql_grant.admin_grant](https://registry.terraform.io/providers/takatohano/mysql/1.2.1/docs/resources/grant) | resource |
| [mysql_grant.grant](https://registry.terraform.io/providers/takatohano/mysql/1.2.1/docs/resources/grant) | resource |
| [mysql_user.admin_user](https://registry.terraform.io/providers/takatohano/mysql/1.2.1/docs/resources/user) | resource |
| [mysql_user.user](https://registry.terraform.io/providers/takatohano/mysql/1.2.1/docs/resources/user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | Admin username | `string` | `"admin"` | no |
| <a name="input_databases"></a> [databases](#input\_databases) | n/a | <pre>map(object({<br>    db                    = string<br>    db_user               = string<br>    db_user_password      = string<br>    default_character_set = optional(string, "latin1")<br>    default_collation     = optional(string, "latin1_swedish_ci")<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_user_password"></a> [admin\_user\_password](#output\_admin\_user\_password) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
