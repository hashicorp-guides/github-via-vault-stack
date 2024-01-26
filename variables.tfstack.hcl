# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "identity_token_file" {
  type = string
}

variable "vault_address" {
  type = string

  description = "The address for your Vault or HCP Vault cluster, e.g. https://vault-cluster.vault.<uuid>.aws.hashicorp.cloud:8200"
}

variable "vault_namespace" {
  type = string

  description = "The Vault namespace used, if necessary. For HCP Vault, a namespace is required and automatically created as 'admin'. See https://developer.hashicorp.com/vault/tutorials/cloud-ops/hcp-vault-namespace-considerations#hcp-vault-admin-namespace"
}

variable "vault_role" {
  type = string

  description = "The Vault role you created for JWT authentication with TFC"
}
