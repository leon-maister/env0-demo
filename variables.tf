variable "akeyless_access_id" {
  description = "Akeyless Access ID"
  type        = string
}

variable "akeyless_access_key" {
  description = "Akeyless Access Key"
  type        = string
  sensitive   = true
}
