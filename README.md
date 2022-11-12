# tf-starter
Terraform Starter Project using Terraform Cloud and the Databricks provider

## Purpose
Demonstrate a simple provider to add one team's workload to an existing workspace using Terraform cloud

## Terraform Cloud setup and build
Terraform Cloud or Terraform Enterprise Cloud is recommended for maintainence of production environments.

1. Fork this repository
2. Sign in or signup at https://www.terraform.io/
    -  Select "Version control workflow"
    -  Connect to a version control provider, select GitHub
        -    add `<your github id>/tf-starter` repo
    -  Configure settings
    -  Create workspace
    -  Edit `terraform-cloud.tf` in this repo to match your Terraform workspace name and organization id
3. Go to "Workspaces -> <your workspace> -> Settings -> Variables
    -  Add variable "DATABRICKS_HOST" and your workspace url as the Value, set variable category to "Environment variable"
    -  Jump over to your Databricks workspace -> User Name -> User Settings -> Access Tokens -> Generate new token -> Copy token value
    -  Add variable "DATABRICKS_TOKEN" and paste the token value into the "Value" field. Click "sensitive", set variable category to "Evnironment variable"
4. Go to "Workspaces" select your workspace and click "Actions" -> "Start new run"
    -  Choose run type "Plan and apply (standard)"
    -  Click "Start run"
5. Select the run, click on "See details"
6. If needed, click on button to *Apply* changes
7. You should now have a new cluster in your Databricks workspace.

### Changing Databricks resources and configuration
1. Change code in github, 
    -  Commit to a new branch,
    -  Create Pull Request
    -  Merge changes into main branch. 
    -  If workspace is set correctly, the plan phase will automatically start and run. 
2. Click on the Apply button to complete the update.


## Terraform command line setup and build
1. Fork this repository
2. git clone `<cloned repo>`
3. Remove `terraform-cloud.tf`
4. Set env variables
    - `EXPORT DATABRICKS_HOST=<your workspace URL>`
    - `EXPORT DATABRICKS_TOKEN=<your personal access token>`
5. Run `terraform plan`
0. Review output of planning phase
0. Run `terraform apply`
0. Commit changes
0. Push changes to GitHub
