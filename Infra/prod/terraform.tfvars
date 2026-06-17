resource_groups = {
  rg1 = {
    name       = "rg-prodd"
    location   = "centralus"
    managed_by = "admin-user"
    tags = {
      environment = "production"
      owner       = "prod-team"
    }
  }
}
# virtual_networks = {
#   vnet-prod = {
#     name                = "vnet-prodd"
#     address_space       = ["10.0.0.0/16"]
#     location            = "centralus"
#     resource_group_name = "rg-prod"
#     tags = {
#       environment = "production"
#       owner       = "network-team"
#     }
#     subnets = {
#       sub1 = {
#         name                                  = "frontend-subnet-prod"
#         address_prefixes                      = ["10.0.1.0/24"]
#         resource_group_name                   = "rg-prod"
#         private_endpoint_network_policies     = "Disabled"
#         private_link_service_network_policies = "Disabled"
#       }
#       sub2 = {
#         name                                  = "backend-subnet-prod"
#         address_prefixes                      = ["10.0.2.0/24"]
#         resource_group_name                   = "rg-prod"
#         private_endpoint_network_policies     = "Disabled"
#         private_link_service_network_policies = "Disabled"
#       }
#     }
#   }
# }
# public_ips = {
#   pip1 = {
#     name                = "frontend-pip"
#     location            = "centralus"
#     resource_group_name = "rg-prod"
#     allocation_method   = "Static"
#     sku                 = "Standard"
#     tags = {
#       environment = "production"
#       owner       = "network-team"
#     }
#   }
#   pip2 = {
#     name                = "backend-pip"
#     location            = "centralus"
#     resource_group_name = "rg-prod"
#     allocation_method   = "Static"
#     sku                 = "Standard"
#     tags = {
#       environment = "production"
#       owner       = "network-team"
#     }
#   }
# }
# network_interfaces = {
#   nic1 = {
#     name                           = "vm1-nic"
#     location                       = "centralus"
#     resource_group_name            = "rg-prod"
#     subnet_name                    = "frontend-subnet-prod"
#     public_ip_name                 = "frontend-pip"
#     virtual_network_name           = "vnet-prodd"
#     accelerated_networking_enabled = true
#     auxiliary_mode                 = "AcceleratedConnections"
#     auxiliary_sku                  = "A4"
#     dns_servers                    = ["10.0.1.4"]
#     ip_configurations = {
#       ipconfig1 = {
#         name = "frontend-ipconfig-prod"

#         private_ip_address_allocation = "Dynamic"
#       }
#     }

#     tags = {
#       environment = "production"
#       owner       = "network-team"
#     }


#   }
#   nic2 = {
#     name                           = "vm2-nic"
#     location                       = "centralus"
#     resource_group_name            = "rg-prod"
#     virtual_network_name           = "vnet-prodd"
#     subnet_name                    = "backend-subnet-prod"
#     public_ip_name                 = "backend-pip"
#     auxiliary_mode                 = "AcceleratedConnections"
#     accelerated_networking_enabled = true
#     auxiliary_sku                  = "A4"
#     dns_servers                    = ["10.0.2.4"]
#     ip_configurations = {
#       ipconfig1 = {
#         name = "backend-ipconfig-prod"

#         private_ip_address_allocation = "Dynamic"
#       }
#     }
#     tags = {
#       environment = "production"
#       owner       = "network-team"
#     }

#   }
# }
# container_registries = {
#   acrprod = {
#     name                = "acrprodregistry"
#     resource_group_name = "rg-prod"
#     location            = "centralus"
#     sku                 = "Standard"
#     admin_enabled       = true
#     tags = {
#       environment = "production"
#       owner       = "devops-team"
#     }
#   }
# }
# aks_clusters = {
#   aksprod = {
#     name                = "aks-prod-cluster"
#     location            = "centralus"
#     resource_group_name = "rg-prod"
#     dns_prefix          = "aksprod"
#     identity = {
#       type = "SystemAssigned"
#     }
#     default_node_pools = {
#       default = {
#         name       = "default"
#         node_count = 1
#         vm_size    = "Standard_D2ls_v6"
#       }
#     }
#     linux_profile = {
#       admin_username = "aksadmin"
#       ssh_key = {
#         key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD..."
#       }
#     }
#     service_principal = {
#       client_id     = "your-service-principal-client-id"
#       client_secret = "your-service-principal-client-secret"
#     }
#     tags = {
#       environment = "production"
#       owner       = "k8s-team"
#     }
#   }
# }