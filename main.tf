terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "Oreilly_test"

    workspaces {
      name = "TEST_TERA"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "dev_db" {
  name    = "Dev_DB"
  comment = "CREATE Database for Snowflake Terraform demo"
}
