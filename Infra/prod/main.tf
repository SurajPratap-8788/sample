module "resource_group" {
  source          = "../Module/azurerm_resource_group"
  resource_groups = var.resource_groups

}
# module "virtual_network" {
#   depends_on       = [module.resource_group]
#   source           = "../Module/azurerm_virtual_network"
#   virtual_networks = var.virtual_networks

# }
# module "public_ip" {
#   depends_on = [module.resource_group]
#   source     = "../Module/azurerm_public_ip"
#   public_ips = var.public_ips

# }
# module "network_interface" {
#   depends_on         = [module.resource_group, module.virtual_network, module.public_ip]
#   source             = "../Module/azurerm_network_interface"
#   network_interfaces = var.network_interfaces
# }
# # module "virtual_machine" {
# #     depends_on = [ module.resource_group, module.network_interface ]
# #     source              = "../../Module/azurerm_virtual_machine"
# #         vms = var.vms
# # }


# # module "mssql_server" {
# #     depends_on = [ module.resource_group ]
# #     source              = "../../Module/azurerm_mssql_server"
# #         mssql_servers = var.mssql_servers

# # }
# # module "mssql_database" {
# #     depends_on = [ module.resource_group, module.mssql_server ]
# #     source              = "../../Module/azurerm_mssql_database"
# #         mssql_databases = var.mssql_databases

# # }
# # module "storage_account" {
# #     depends_on = [ module.resource_group ]
# #     source              = "../../Module/azurerm_storage_account"
# #         storage_accounts = var.storage_accounts

# # }
# # module "storage_container" {
# #     depends_on = [ module.resource_group, module.storage_account ]
# #     source              = "../../Module/azurerm_storage_container"
# #         storage_containers = var.storage_containers

# # }
# module "container_registry" {
#   depends_on           = [module.resource_group]
#   source               = "../Module/azurerm_container_registry"
#   container_registries = var.container_registries

# }
# module "kubernetes_cluster" {
#   depends_on   = [module.resource_group, module.network_interface]
#   source       = "../Module/azurerm_aks"
#   aks_clusters = var.aks_clusters

# }
# # module "key_vault" {
# #     depends_on = [ module.resource_group ]
# #     source              = "../../Module/azurerm_keyvault"
# #         key_vaults = var.key_vaults

# # }
# # # module "application_gateway" {
# # #     depends_on = [ module.resource_group, module.virtual_network, module.public_ip ]
# # #     source              = "../../Module/azurerm_application_gateway"
# # #         application_gateways = var.application_gateways

# # # }
# # # module "load_balancer" {
# # #     depends_on = [ module.resource_group, module.virtual_network, module.public_ip ]
# # #     source              = "../../Module/azurerm_load_balancer"
# # #         load_balancers = var.load_balancers
# # # }
# # module "network_security_group" {
# #     depends_on = [ module.resource_group ]
# #     source              = "../../Module/azurerm_nsg"
# #         nsgs = var.nsgs

# # }
# # module "bastion" {
# #     depends_on = [ module.resource_group, module.virtual_network, module.public_ip ]
# #     source              = "../../Module/azurerm_bastion"
# #         bastions = var.bastions

# # }