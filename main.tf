# Akeyless Terraform Provider - Simple POC
# 1. Creates 1 static secret
# 2. Reads 1 existing secret
# 3. Fetches dynamic AWS credentials from Akeyless and creates an S3 bucket

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    akeyless = {
      source  = "akeyless-community/akeyless"
      version = "~> 1.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# ===========================================
# Akeyless Provider - API Key Authentication
# ===========================================

provider "akeyless" {
  api_gateway_address = "https://gw-aws.lm.cs.akeyless.fans/api/v2"

  jwt_login {
    access_id  = var.akeyless_access_id
 }
}

# ===========================================
# Scenario 1: Create a static secret
# ===========================================

resource "akeyless_static_secret" "demo_secret" {
  path        = "/YardenSecret"
  value       = "Hello!!"
  description = "Demo secret created via Terraform"
}
