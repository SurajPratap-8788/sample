resource "azurerm_kubernetes_cluster" "aks" {
    for_each = var.aks_clusters
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    dns_prefix          = each.value.dns_prefix
    

   dynamic "default_node_pool" {
        for_each = each.value.default_node_pools == null ? {} : each.value.default_node_pools
        content {
            name       = lookup(default_node_pool.value, "name", null)
            node_count = lookup(default_node_pool.value, "node_count", null)
            vm_size    = lookup(default_node_pool.value, "vm_size", null)
        }
   }
    
    identity {
        type = lookup(each.value.identity, "type", null)
    }

    tags = lookup(each.value, "tags", {})
  
}