# outputs.tf
output "ip_netmask_objects" {
  description = "Created IP netmask address objects"
  value       = { for k, v in scm_address.ip_netmask : k => v.id }
}

output "ip_range_objects" {
  description = "Created IP range address objects"
  value       = { for k, v in scm_address.ip_range : k => v.id }
}

output "fqdn_objects" {
  description = "Created FQDN address objects"
  value       = { for k, v in scm_address.fqdn : k => v.id }
}

output "ip_wildcard_objects" {
  description = "Created IP wildcard address objects"
  value       = { for k, v in scm_address.ip_wildcard : k => v.id }
}
