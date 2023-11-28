component "secrets" {
  source = "./vault"

  inputs = {
  }

  providers = {
    vault = provider.vault.this
  }
}

component "github" {
  source = "./github"

  inputs = {
  }

  providers = {
    github = provider.github.this
  }
}
