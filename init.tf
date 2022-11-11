terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "1.6.5"
    }
    aws = {
      source = "hashicorp/aws"
      version = "3.49.0"
    }
  }
}

// Initialize databricks provider, prompting for host and Personal Access Token
provider "databricks" {
  host=var.host
  token=var.token
}
