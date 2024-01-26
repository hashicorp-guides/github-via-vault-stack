# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.42.0"
    }
  }
}

resource "github_repository" "example" {
  name        = "example-repo-created-via-tf-stacks"
  description = "A neato repo created via Terraform Stacks!"

  visibility = "private"
}
