# Create users
resource "azuread_user" "users" {
  for_each = {
    for user in local.users :
    "${user.first_name}.${user.last_name}" => user
  }

  user_principal_name = format(
    "%s%s-%s@%s",
    substr(lower(each.value.first_name), 0, 1),
    lower(each.value.last_name),
    random_pet.suffix.id,
    local.domain_name
  )

  display_name  = "${each.value.first_name} ${each.value.last_name}"
  mail_nickname = lower("${each.value.first_name}.${each.value.last_name}")

  password = format(
    "%s%s%s%s!",
    title(each.value.first_name), # Capital letter
    lower(each.value.last_name),  # Lowercase
    length(each.value.last_name), # Number
    substr("!@#%&*ABCXYZ", 0, 1)  # Extra symbol to ensure mix (optional redundancy)
  )

  force_password_change = var.user_force_password_change
  account_enabled       = var.user_account_enabled

  department = each.value.department
  job_title  = each.value.job_title
}

