variable "akeyless_access_id" {
  description = "Akeyless Access ID"
  type        = string
}

variable "akeyless_access_key" {
  description = "Akeyless Access Key"
  type        = string
  sensitive   = true
}

variable "AKEYLESS_JWT_ACCESS_ID" { 
  description = "JWT Access"
  type        = string
  sensitive   = true
}

variable "JWT_VALUE" { 
  description = "JWT VALUE"
  type        = string
  sensitive   = true
}

