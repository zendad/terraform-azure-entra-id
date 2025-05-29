# tfvars
subscription_id            = ""
location                   = "germanywestcentral"
environment                = "test"
user_force_password_change = true
user_account_enabled       = true
group_security_enabled     = true
account_tier               = "Standard"
account_replication_type   = "GRS"
allow_blob_public_access   = false
container_access_type      = "private"
default_tags = {
  env     = "test"
  owner   = "Infrastructure"
  contact = "infra@dereckzenda.com"
  dept    = "DevOps"
}