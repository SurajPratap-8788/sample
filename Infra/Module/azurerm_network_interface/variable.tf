variable "network_interfaces" {
    description = "value"
    type = map(object({
        name = string
        resource_group_name = string
        location = string 
        tags = optional(map(string))
        auxiliary_mode = optional(string)
        auxiliary_sku = optional(string)
        dns_servers = optional(list(string))
       
        ip_forwarding_enabled = optional(bool)
        accelerated_networking_enabled = optional(bool)
        internal_dns_name_label = optional(string)
    
        subnet_name = string
        public_ip_name = string
        virtual_network_name = string
        ip_configurations = optional(map(object({
            name = string
            private_ip_address_allocation = string
            primary = optional(bool)
            
        })))

    }))
}