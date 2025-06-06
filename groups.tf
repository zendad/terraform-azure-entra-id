# create AD groups
resource "azuread_group" "aad_groups" {
  for_each = {
    for group in local.groups : group.name => group
  }

  display_name     = each.value.name
  description      = each.value.description
  security_enabled = var.group_security_enabled
}

# assign users to groups
resource "azuread_group_member" "user_group_membership" {
  for_each = {
    for user in local.users :
    "${user.first_name}.${user.last_name}" => {
      role      = user.role
      group_key = local.role_to_group[user.role]
      user_id   = azuread_user.users["${user.first_name}.${user.last_name}"].object_id
    }
    if contains(keys(local.role_to_group), user.role)
  }

  group_object_id  = azuread_group.aad_groups[each.value.group_key].object_id
  member_object_id = each.value.user_id
}
