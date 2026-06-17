resource "azurerm_public_ip" "public_ip" {
    for_each = var.public_ips
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    allocation_method   = each.value.allocation_method
    sku                 = lookup(each.value, "sku", null)
    tags                = lookup(each.value, "tags", {})
    ddos_protection_mode = lookup(each.value, "ddos_protection_mode", "Basic")
    idle_timeout_in_minutes = lookup(each.value, "idle_timeout_in_minutes", 4)
    domain_name_label   = lookup(each.value, "domain_name_label", null)
    public_ip_prefix_id = lookup(each.value, "public_ip_prefix_id", null)
    ip_tags             = lookup(each.value, "ip_tags", {})
    zones               = lookup(each.value, "zones", [])

}