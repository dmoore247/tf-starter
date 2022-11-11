# tf-starter
Terraform Starter Project using TF Cloud

## Purpose
Demonstrate a simple provider to add one team's workload to an existing workspace using Terraform cloud

## Setup Terraform Cloud and build a simple cluster
1. Fork this repository
2. Sign in or signup at https://www.terraform.io/
    -  Select "Version control workflow"
    -  Connect to a version control provider, select GitHub
        -    add \<your github id\>/tf-starter repo
    -  Configure settings
    -  Create workspace
3. Go to "Workspaces -> <your workspace> -> Settings -> Variables
    -  Add variable "host" and your workspace url as the Value
    -  Jump over to your Databricks workspace -> User Name -> User Settings -> Access Tokens -> Generate new token -> Copy token value
    -  Add variable "token" and paste the token value into the "Value" field. Click "sensitive"
4. Go to "Workspaces" select your workspace and click "Actions" -> "Start new run"
5. Select the run, click on "See details"
6. Change code in github, commit. If workspace is set correctly, the plan phase will automatically run. 
7. Click on the Apply button to complete the update.
8. You should now have a new cluster in your Databricks workspace.
