data "azurerm_client_config" "current" {}
data "azuread_domains" "default" {
  only_initial = true
}
