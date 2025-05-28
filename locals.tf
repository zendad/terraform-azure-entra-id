resource "random_pet" "suffix" {
  length = 2
}

locals {
  domain_name = data.azuread_domains.default.domains.0.domain_name
  users       = csvdecode(file("${path.module}/users.csv"))
  groups       = csvdecode(file("${path.module}/groups.csv"))
  # Map roles to group names
  role_to_group = {
    "clusteradmin"       = "aks-cluster-admin"
    "clusteroperator"    = "aks-cluster-cluster-operator"
    "clusterviewer"      = "aks-cluster-cluster-viewer"
    "namespaceadmin"     = "aks-cluster-namespace-admin"
    "namespaceoperator"  = "aks-cluster-namespace-operator"
    "namespaceviewer"    = "aks-cluster-namespace-viewer"
  }

}
