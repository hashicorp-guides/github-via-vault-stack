identity_token "vault" {
  audience = ["vault.workload.identity"]
}

deployment "production" {
  variables = {
    identity_token_file = identity_token.vault.jwt_filename

    # See variables.tfstack.hcl for more information
    vault_address       = "<Replace with your own Vault or HCP Vault cluster address>"
    vault_namespace     = "<Replace with the appropriate Vault namespace, if necessary"
    vault_role          = "<Replace with your created Vault role for JWT authentication with TFC"
  }
}
