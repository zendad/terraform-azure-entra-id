resource "random_pet" "suffix" {
  length = 2
}

locals {
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
