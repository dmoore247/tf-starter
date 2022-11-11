// initialize provider at workspace level
provider "databricks" {
  alias = "mws"
  host  = module.mws.databricks_host
  token = module.mws.databricks_token
  auth_type = "pat"
}

// initialize provider at account level
provider "databricks" {
  alias      = "groups"
  host       = "https://accounts.cloud.databricks.com"
  account_id = var.account_id
  username   = var.databricks_account_username
  password   = var.databricks_account_password
}
