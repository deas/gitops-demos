# DataDog GitOps example

Disclaimer: Derived from [DataDog/terraform-datadog](https://github.com/DataDog/terraform-datadog)

# Terraform

Example architecture to use Terraform to manage Datadog.

## Folder architecture

- In `modules/` all the standard monitors available OOTB.
- In `company/` a folder per environment and team.

## How does it work?

To create a new project for your team:

1. Create a new folder under the relevant environment folder (`prod/` or `dev/`)
2. Create a folder with your team name
3. Create a file `main.tf` to initiate the relevant providers
4. Initiate the main variables for you team in `variables.tf`
5. Initiate the variables to connect to the providers in `terraform.tfvars`
6. Create your monitors using the modules in `monitors_*.tf` files

## Get started

1. Create a `terraform.tvars` file: `cp terraform.tvars.example terraform.tvars`
2. Run `terraform init`
3. Run `terraform plan`
4. Run `terraform apply`

## Misc

- [Using Datadog and Terraform for advanced monitoring as code](https://www.devopsgroup.com/blog/datadog-terraform-advanced-monitoring-as-code/)
- [DataDog/terraform-datadog](https://github.com/DataDog/terraform-datadog)
- [integrations/terraform](https://docs.datadoghq.com/integrations/terraform/)

## TODO

- Setup an example with `source      = "github.com/username/repo_name?ref=1.0"` to use module versioning
