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