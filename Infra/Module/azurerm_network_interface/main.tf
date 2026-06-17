resource "azurerm_network_interface" "nic" {
    for_each = var.network_interfaces
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    tags = lookup(each.value, "tags", {})
    auxiliary_mode = lookup(each.value, "auxiliary_mode", null)
    auxiliary_sku = lookup(each.value, "auxiliary_sku", null)
    dns_servers = lookup(each.value, "dns_servers", [])
  
    ip_forwarding_enabled = lookup(each.value, "ip_forwarding_enabled", null)
    accelerated_networking_enabled = lookup(each.value, "accelerated_networking_enabled", null)
    internal_dns_name_label = lookup(each.value, "internal_dns_name_label", null)
    dynamic "ip_configuration" {
        for_each = each.value.ip_configurations == null ? {} : each.value.ip_configurations
        content {
          name = ip_configuration.value.name
          private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
          subnet_id = data.azurerm_subnet.subnets[each.key].id
          public_ip_address_id = data.azurerm_public_ip.public_ips[each.key].id
            
          primary = lookup(ip_configuration.value, "primary", null)
        }
        }   
    }

