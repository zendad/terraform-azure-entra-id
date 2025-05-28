# AKS Cluster Creation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.7.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.107.0, < 4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.7.0 |
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
| [random_pet.suffix](https://registry.terraform.io/providers/hashicorp/random/3.3.2/docs/resources/pet) | resource |
| [azuread_domains.default](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/domains) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure Region | `string` | `""` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Subscription ID | `string` | `""` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
