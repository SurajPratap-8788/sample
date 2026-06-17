variable "virtual_networks" {
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    tags                = map(string)
    subnets = optional(map(object({
        name = string
        address_prefixes = list(string)
        private_endpoint_network_policies = optional(string)
    })))
  }))
}