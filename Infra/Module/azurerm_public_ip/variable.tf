variable "public_ips" {
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
        allocation_method   = string
        sku                 = optional(string)
        tags                = optional(map(string))
        ddos_protection_mode = optional(string)
        idle_timeout_in_minutes = optional(number)
        domain_name_label   = optional(string)
        public_ip_prefix_id = optional(string)
        ip_tags             = optional(map(string))
        zones               = optional(list(string))
    
    }))
    }