output "github_token" {
  description = "The static GitHub token stored securely in HCP Vault, fetched via OIDC authentication"

  # TODO: Stacks fail to serialize a sensitive value, so we temporarily nonsensitive() the value for
  # now. Without, it will fail with ".token: value has marks, so it cannot be serialized"
  value = nonsensitive(data.vault_kv_secret_v2.github_token.data["token"])
}
