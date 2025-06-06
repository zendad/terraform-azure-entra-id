# Azure Entra ID
This Terraform automates the management of Microsoft Entra ID (formerly Azure Active Directory) users and groups using declarative CSV inputs. It is designed to streamline identity provisioning and access control for Azure Kubernetes Service (AKS) and related environments.

Features
User and Group Management: Define users in users.csv and groups in groups.csv.

Role-Based Group Assignment: Automatically assigns users to Entra ID groups based on their role defined in the CSV.

Kubernetes Role Mapping: Supports role mappings such as namespaceadmin, clusteradmin, namespaceviewer, etc., to Entra ID groups like:

aks-cluster-namespaceadmin

aks-cluster-clusteradmin

aks-cluster-namespaceoperator

aks-cluster-clusterviewer, etc.

Example Use Case
Provision users like DevOps Engineers or Support Engineers and automatically assign them to appropriate groups based on their responsibilities (e.g., clusteradmin, namespaceoperator)—enabling seamless RBAC enforcement in AKS.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 3.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.107.0, < 4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 3.0.2 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.117.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.aad_groups](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azuread_group_member.user_group_membership](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group_member) | resource |
| [azuread_user.users](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/user) | resource |
| [azurerm_resource_group.backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.backend](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.tfstate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [random_pet.suffix](https://registry.terraform.io/providers/hashicorp/random/3.3.2/docs/resources/pet) | resource |
| [azuread_domains.default](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/domains) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | The replication type of the storage account (e.g., LRS, GRS, ZRS) | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | The performance tier of the storage account (Standard or Premium) | `string` | `"Standard"` | no |
| <a name="input_container_access_type"></a> [container\_access\_type](#input\_container\_access\_type) | The access level of the storage container (private, blob, or container) | `string` | `"private"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Default tags for all resources | `map(string)` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment | `string` | `""` | no |
| <a name="input_group_security_enabled"></a> [group\_security\_enabled](#input\_group\_security\_enabled) | Whether the Azure AD group is a security group. Required for assigning roles. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure Region | `string` | `""` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Subscription ID | `string` | `""` | no |
| <a name="input_user_account_enabled"></a> [user\_account\_enabled](#input\_user\_account\_enabled) | Whether the Azure AD user account is enabled. | `bool` | `false` | no |
| <a name="input_user_force_password_change"></a> [user\_force\_password\_change](#input\_user\_force\_password\_change) | Whether the Azure AD user is forced to change password on next login. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend_config"></a> [backend\_config](#output\_backend\_config) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

