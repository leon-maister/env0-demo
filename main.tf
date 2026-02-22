terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {}

resource "random_pet" "test" {
  length = 2
}

output "pet_name" {
  value = random_pet.test.id
}
