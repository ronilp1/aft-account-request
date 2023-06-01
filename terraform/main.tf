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

module "account_request_01" { # your module name might be different, this is for illustration only
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rrprasad+aftdocs-account-01@amazon.com"
    AccountName               = "AFT-NetworkingAccount"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "rrprasad+aftdocs-account-01@amazon.com"
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
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "rrprasad+aftdocs-account-01-bill@amazon.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "+11234567890",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "rrprasad+aftdocs-account-01-op@amazon.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "+11234567890",
          "title"         = "DevOps Team"
        },
        "security" = {
          "email-address" = "rrprasad+aftdocs-account-01-soc@amazon.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "+11234567890",
          "title"         = "SOC Team"
        }
      }
    )

  }

  account_customizations_name = "sandbox"
}
# module "sandbox" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "rrprasad+aftdocs-sandbox-04@amazon.com"
#     AccountName               = "sandbox-aft-04"
#     ManagedOrganizationalUnit = "Sandbox"
#     SSOUserEmail              = "rrprasad+aftdocs-sandbox@amazon.com"
#     SSOUserFirstName          = "Sandbox"
#     SSOUserLastName           = "AFT"
#   }

#   account_tags = {
#     "Learn Tutorial" = "AFT"
#   }

#   change_management_parameters = {
#     change_requested_by = "HashiCorp Learn"
#     change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "sandbox"
# }
