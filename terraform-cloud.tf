# Required by Hashicorp's Terraform Cloud. 
#
# Align organization and workspaces to your setup in Terraform Cloud.
#

terraform {
  cloud {
    organization = "dbx-org-0633a8"

    workspaces {
      name = "demo"
    }
  }
}
