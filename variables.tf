# variables.tf
variable "folder" {
  description = "SCM folder to deploy address objects into"
  type        = string
  default     = "Shared"
}

variable "address_objects" {
  description = "Map of address objects to create"
  type = map(object({
    description = optional(string, "")
    tags        = optional(list(string), [])
    # Exactly one of the following should be set per object
    ip_netmask  = optional(string)
    ip_range    = optional(string)
    fqdn        = optional(string)
    ip_wildcard = optional(string)
  }))
  default = {}
}
