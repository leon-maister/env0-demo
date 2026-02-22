# This data source tells Terraform to fetch a specific secret from Akeyless
data "vault_generic_secret" "my_first_secret" {
  path = "MyFirstSecret" # The exact name/path of your secret in Akeyless
}

# This output will show the length of the secret to confirm we got it
# (without printing the actual sensitive value in plain text)
output "secret_check" {
  value     = "Successfully retrieved secret! Length: ${length(data.vault_generic_secret.my_first_secret.data["value"])}"
}

# If you really want to see the value (for testing only!), uncomment the lines below:
# output "actual_secret_value" {
#   value     = data.vault_generic_secret.my_first_secret.data["value"]
#   sensitive = true
# }
