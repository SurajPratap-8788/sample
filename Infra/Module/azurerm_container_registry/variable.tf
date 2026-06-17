variable "container_registries" {
    description = "Map of Container Registries"
    type = map(object({
        name                = string
        resource_group_name = string
        location            = string
        sku                 = string
        admin_enabled       = optional(bool)
        tags                = optional(map(string))
    }))
  
}