terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    mysql = {
      source  = "takatohano/mysql"
      version = "1.2.1"
    }
  }
}
