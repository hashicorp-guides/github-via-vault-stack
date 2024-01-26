# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  vault = {
    source  = "hashicorp/vault"
    version = "~> 3.23.0"
  }

  github = {
    source  = "integrations/github"
    version = "~> 5.42.0"
  }
}

provider "vault" "this" {
  config {
    skip_child_token = true
    address          = var.vault_address
    namespace        = var.vault_namespace

    auth_login_jwt {
      jwt  = file(var.identity_token_file)
      role = var.vault_role
    }
  }
}

provider "github" "this" {
  config {
    token = component.secrets.github_token
  }
}
