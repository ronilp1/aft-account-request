module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rrprasad+aftdocs-sandbox@amazon.com"
    AccountName               = "sandbox-aft-03"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "rrprasad+aftdocs-sandbox@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "IAMUserAccount" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rrprasad+aftdocs-IAM@amazon.com"
    AccountName               = "AFTSolutionIdentitiesAccount"
    ManagedOrganizationalUnit = "Identity"
    SSOUserEmail              = "rrprasad+aftdocs-IAM@amazon.com"
    SSOUserFirstName          = "Identity"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rrprasad+aftdocs-sandbox-04@amazon.com"
    AccountName               = "sandbox-aft-04"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "rrprasad+aftdocs-sandbox@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
