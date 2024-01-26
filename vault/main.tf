# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

data "vault_kv_secret_v2" "github_token" {
  mount     = "kv"
  name      = "github"
}
