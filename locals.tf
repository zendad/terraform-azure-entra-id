resource "random_pet" "suffix" {
  length = 2
}

locals {
  azure_regions_shortname = {
    "australiaeast"      = "aue"
    "australiasoutheast" = "aus"
    "brazilsouth"        = "brs"
    "canadacentral"      = "cac"
    "canadaeast"         = "cae"
    "centralindia"       = "cin"
    "centralus"          = "cus"
    "eastasia"           = "eas"
    "eastus"             = "eus"
    "eastus2"            = "eus2"
    "francecentral"      = "frc"
    "germanywestcentral" = "gwc"
    "japaneast"          = "jpe"
    "japanwest"          = "jpw"
    "koreacentral"       = "krc"
    "northcentralus"     = "ncus"
    "northeurope"        = "neu"
    "norwayeast"         = "nwe"
    "southafricanorth"   = "san"
    "southcentralus"     = "scus"
    "southindia"         = "sin"
    "southeastasia"      = "sea"
    "swedencentral"      = "sec"
    "switzerlandnorth"   = "chn"
    "uaenorth"           = "uan"
    "uksouth"            = "uks"
    "ukwest"             = "ukw"
    "westeurope"         = "weu"
    "westus"             = "wus"
    "westus2"            = "wus2"
    "westus3"            = "wus3"
  }

  name_prefix = "${var.environment}-${local.azure_regions_shortname[var.location]}"
  domain_name = data.azuread_domains.default.domains.0.domain_name
  users       = csvdecode(file("${path.module}/users.csv"))
  groups      = csvdecode(file("${path.module}/groups.csv"))
  # Map roles to group names
  role_to_group = {
    "clusteradmin"      = "aks-cluster-clusteradmin"
    "clusteroperator"   = "aks-cluster-clusteroperator"
    "clusterviewer"     = "aks-cluster-clusterviewer"
    "namespaceadmin"    = "aks-cluster-namespaceadmin"
    "namespaceoperator" = "aks-cluster-namespaceoperator"
    "namespaceviewer"   = "aks-cluster-namespaceviewer"
  }

}
