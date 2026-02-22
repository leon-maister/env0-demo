data "vault_generic_secret" "my_first_secret" {
  path = "MyFirstSecret"
}

output "secret_check" {
  value = "Successfully retrieved secret! Length: ${length(data.vault_generic_secret.my_first_secret.data["value"])}"
}
