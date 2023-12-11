data "vault_kv_secret_v2" "github_token" {
  mount     = "kv"
  name      = "github"
}
