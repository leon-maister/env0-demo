terraform {
  required_providers {
    # Основной провайдер для работы с Akeyless
    vault = {
      source  = "hashicorp/vault"
      version = "3.25.0"
    }
    # Оставляем этот блок, чтобы Terraform не падал при поиске старых ресурсов
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# Настройка подключения к Akeyless
provider "vault" {
  address = "https://hvp.akeyless.io"
  # Токен подставит env0 автоматически через переменную VAULT_TOKEN
}

# Пустой блок для корректного удаления старых ресурсов
provider "random" {}
