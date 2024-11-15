resource "azurerm_kubernetes_cluster" "aks" {
  name                = "azure-devops-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "azure-devops-aks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2s_v3"
    vnet_subnet_id = var.subnet_id
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.1.0.0/16"
    dns_service_ip = "10.1.0.10"
  }

  identity {
    type = "SystemAssigned"
  }
}
