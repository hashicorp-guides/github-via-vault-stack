data "vault_kv_secret_v2" "github_token" {
  mount     = "kv"
  # namespace = "admin"
  name      = "github"
}
