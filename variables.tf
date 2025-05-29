variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = ""
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = ""
}

variable "user_force_password_change" {
  type        = bool
  default     = false
  description = "Whether the Azure AD user is forced to change password on next login."
}

variable "user_account_enabled" {
  type        = bool
  default     = false
  description = "Whether the Azure AD user account is enabled."
}

variable "group_security_enabled" {
  type        = bool
  default     = false
  description = "Whether the Azure AD group is a security group. Required for assigning roles."
}

variable "account_tier" {
  description = "The performance tier of the storage account (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account (e.g., LRS, GRS, ZRS)"
  type        = string
  default     = "LRS"
}

variable "container_access_type" {
  description = "The access level of the storage container (private, blob, or container)"
  type        = string
  default     = "private"

  validation {
    condition     = contains(["private", "blob", "container"], var.container_access_type)
    error_message = "container_access_type must be one of: private, blob, or container"
  }
}