terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.25.0" 
    }
  }
}

provider "vault" {
  address = "https://hvp.akeyless.io"
}
