data "azurerm_subnet" "subnets" {
    for_each = var.network_interfaces
    name = each.value.subnet_name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
}
data "azurerm_public_ip" "public_ips" {
    for_each = var.network_interfaces
    name = each.value.public_ip_name
    resource_group_name = each.value.resource_group_name
}