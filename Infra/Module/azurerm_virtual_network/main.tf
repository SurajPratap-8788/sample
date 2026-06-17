resource "azurerm_virtual_network" "vnet" {
    for_each = var.virtual_networks
    name                = each.value.name
    address_space       = each.value.address_space
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    tags                = lookup(each.value, "tags", {})
    
    dynamic "subnet" {
      for_each = each.value.subnets == null ? {} : each.value.subnets
        content {
            name           = lookup(subnet.value, "name", null)
            address_prefixes = lookup(subnet.value, "address_prefixes", null)
            private_endpoint_network_policies = lookup(subnet.value, "private_endpoint_network_policies", null)
        }
    }
}