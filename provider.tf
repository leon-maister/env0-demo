terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.0"
    }
  }
}

provider "vault" {
  # Akeyless Gateway address using HashiCorp Vault Protocol
  address = "https://hvp.akeyless.io"

  # No token field needed here! 
  # env0 will automatically provide VAULT_TOKEN from the native integration.
}
