terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.24.0" # Поменяли с 3.25.0 на 3.24.0
    }
  }
}

provider "vault" {
  address = "https://hvp.akeyless.io"
}
