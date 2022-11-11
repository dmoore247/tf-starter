# required by Hashicorp's Terraform Cloud. Align organization and workspaces to your setup in Terraform Cloud.
#
# Change organization and workspace name to match your own
#

terraform {
  cloud {
    organization = "dbx-org-0633a8"

    workspaces {
      name = "demo"
    }
  }
}
