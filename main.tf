terraform {
  required_version = ">= 0.13"

  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = ">= 1.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
