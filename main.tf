terraform {
  cloud {
    organization = "tf-cn"

    workspaces {
      name = "nam-aft-test"
    }
  }
}


module "aftnam" {
  source  = "app.terraform.io/tf-cn/aftnam/github"
  version = "1.0.0"
  # insert required variables here
    ct_management_account_id    = "552166050235"
    log_archive_account_id      = "590184073128"
    audit_account_id            = "767397899115"
    aft_management_account_id   = "891377167096"
    github_username             = "Nam-ks"
    ct_home_region              = "ap-northeast-2"
    tf_backend_secondary_region = "ap-northeast-1"

    vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/learn-terraform-aft-account-request"
  account_provisioning_customizations_repo_name = "${var.github_username}/learn-terraform-aft-account-provisioning-customizations"
  global_customizations_repo_name               = "${var.github_username}/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/learn-terraform-aft-account-customizations"
}
