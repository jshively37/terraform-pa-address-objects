# main.tf

# --- IP Netmask address objects ---
resource "scm_address" "ip_netmask" {
  for_each = {
    for k, v in var.address_objects : k => v
    if v.ip_netmask != null
  }

  name        = each.key
  folder      = var.folder
  description = each.value.description
  ip_netmask = each.value.ip_netmask
}

# --- IP Range address objects ---
resource "scm_address" "ip_range" {
  for_each = {
    for k, v in var.address_objects : k => v
    if v.ip_range != null
  }

  name        = each.key
  folder      = var.folder
  description = each.value.description
  ip_range    = each.value.ip_range
}

# --- FQDN address objects ---
resource "scm_address" "fqdn" {
  for_each = {
    for k, v in var.address_objects : k => v
    if v.fqdn != null
  }

  name        = each.key
  folder      = var.folder
  description = each.value.description
  fqdn        = each.value.fqdn
}

# --- IP Wildcard address objects ---
resource "scm_address" "ip_wildcard" {
  for_each = {
    for k, v in var.address_objects : k => v
    if v.ip_wildcard != null
  }

  name        = each.key
  folder      = var.folder
  description = each.value.description
  ip_wildcard = each.value.ip_wildcard
}
