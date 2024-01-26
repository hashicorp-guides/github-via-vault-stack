# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "secrets" {
  source = "./vault"

  inputs = {
  }

  providers = {
    vault = provider.vault.this
  }
}

component "repositories" {
  source = "./github"

  inputs = {
  }

  providers = {
    github = provider.github.this
  }
}
